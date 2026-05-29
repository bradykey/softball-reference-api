# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Run

- **Run locally:** `mvn spring-boot:run -Dspring-boot.run.profiles=local` (binds to `:8081` via `application-local.properties`).
- **Compile only:** `mvn compile` — required before launching from VS Code's debugger, otherwise the main class won't be found.
- **Full build (produces WAR):** `mvn package` → `target/softballreferenceapi.war`.
- **Tests:** there is no `src/test` directory; `mvn test` will run zero tests.
- **Java:** 11 (see `system.properties`). Spring Boot 2.5.15, packaged as **war** (Tomcat is `provided` for Heroku).

### Required local env vars

The `local` profile only supplies `spring.datasource.url` and `server.port`. Before `mvn spring-boot:run`, also export:

```
export ADMIN_USERNAME=...
export ADMIN_PASSWORD_HASH=$(htpasswd -nbBC 10 "" 'PASSWORD' | tr -d ':\n' | sed 's/^ //')
export JWT_SECRET=$(openssl rand -base64 48)
```

Without these, `/auth/login` will not work and JWT validation will fail.

`src/main/resources/application-local.properties` is **gitignored**. The current DB URL lives in Heroku — fetch with `heroku run env` and paste into that file.

## Deployment

Heroku, two git remotes (`origin` → GitHub, `heroku` → `git.heroku.com/softball-reference-api.git`). `Procfile` runs the WAR directly: `java -Dserver.port=$PORT -jar target/softballreferenceapi.war`. Heroku's Java buildpack exports `SPRING_DATASOURCE_URL`, which wins over the (intentionally blank) value in `application.properties`. Deploy with `git push heroku <branch>:main`. See `README.md` for the full Heroku history if needed.

## Architecture

Three-layer Spring Data JPA app over a Postgres schema. The flow is **Controller → `RestService` → DAO (Spring Data repository) → entity**, with `ResponseAndEntityBuilder` translating between JPA entities and request/response DTOs.

- **Controllers** (`controllers/`): thin — one per resource (`Game`, `League`, `StatLine`, `Team`, `TeamLeague`, `Auth`). They delegate to `RestService` and translate domain exceptions (`RecordNotFoundException`, `DuplicateRecordException`) into `ResponseStatusException`s.
- **`service.RestService`**: single `@Service @Transactional` class that owns *all* business logic and DAO orchestration. Because the class is `@Transactional`, lazy-loaded entity relationships are only safe to traverse from within methods on this class — outside it, the session is closed and access will fail. Keep new business logic here rather than in controllers.
- **DAOs** (`model/dao/`): Spring Data `JpaRepository` interfaces. Several extend `CustomJpaRepository`, which adds a `refresh(T)` method (impl in `model/repository/CustomJpaRepositoryImpl`) so a freshly-inserted entity can be re-read with all its DB-side defaults/relations hydrated.
- **Entities** (`model/entity/`): JPA entities. The `@Column(name = ...)` annotations use camelCase (e.g. `@Column(name = "BattingOrder")`), but Spring Boot's default `SpringPhysicalNamingStrategy` converts these to snake_case at runtime — the live DB columns are `batting_order`, `base_on_balls`, etc. Schema changes are now driven by Flyway migrations + `ddl-auto=validate` (see "Schema migrations" below).
- **DTOs** (`model/entity/request_dto/`, `response_dto/`): plain POJOs. There are two response flavors: `*BindResponse` (skinny, for dropdown population, no relationships) and the richer `*Response` / `*SummaryResponse` types used for full views. `ResponseAndEntityBuilder` (in `utils/`) is the canonical place to add new conversions — there are MapStruct dependencies in `pom.xml` but builders are still hand-written here.

### Data model relationships

`Team` ⇄ `League` are joined through `TeamLeague` (a season-specific roster entity). `TeamLeaguePlayer` links a `Player` to a `TeamLeague` (a player's participation on a team in a given season). `Game` belongs to a `TeamLeague`. `StatLine` is the leaf: one row per player per game, FK to both `Game` and `TeamLeaguePlayer`. Stat aggregations (`AccumulatedResponse`, `PlayerSummaryResponse`, `SummaryStatLineResponse`) are computed in `ResponseAndEntityBuilder` from collections of `StatLine`s.

### Auth

JWT bearer auth via `auth/JwtAuthFilter` + `auth/SecurityConfig`. The filter chain is **public-by-default**: all `GET` and `OPTIONS` requests are permitted; only `POST /games` and `POST /statlines` require authentication. `/auth/login` issues a JWT after validating against the bcrypt-hashed `ADMIN_PASSWORD_HASH`. When adding new write endpoints, explicitly add an `antMatchers(HttpMethod.POST, ...).authenticated()` rule in `SecurityConfig` — otherwise they fall through to the `anyRequest().permitAll()` line.

### Schema migrations (Flyway)

Schema changes are driven by **Flyway** migrations in `src/main/resources/db/migration/`. Hibernate runs in `ddl-auto=validate` mode — it checks `@Entity` mappings line up with the live tables on boot and refuses to start on drift, but never mutates the schema itself.

- `V1__baseline_schema.sql` is the snapshot of the schema as it existed when Flyway was turned on. It was generated from `pg_dump --schema-only` against the live Heroku DB and hand-trimmed to drop Heroku-platform objects (`_heroku` schema, event triggers, `pg_stat_statements`) and psql meta-commands (`\restrict`/`\unrestrict`) that don't run over JDBC.
- On the existing Heroku DB, Flyway is configured with `baseline-on-migrate=true` / `baseline-version=1`, so V1 is marked as already-applied on first boot and never re-runs. On a fresh local DB, V1 creates the schema from scratch.
- **Adding a schema change:** edit the `@Entity`, then add `V{n}__short_description.sql` (next integer, two underscores) with the matching DDL. Restart the app — Flyway applies the file, Hibernate validates the result. Never edit an already-applied migration; write a new one to amend.
- Flyway's state lives in the `flyway_schema_history` table in Postgres.

### Seed data

`src/main/resources/static/INSERTS.sql` is a **manually-run** seed script — used for bootstrapping new environments and for adding new leagues/teams between seasons (see `e82584d`, `4448361` commits). Despite `spring.sql.init.mode=always` being set in `application.properties`, Spring does **not** auto-run this file: Spring's SQL init only picks up `schema.sql` / `data.sql` (or `*-postgres.sql` variants) at the classpath root, and nothing in the codebase references `INSERTS.sql`. Its location under `static/` also incidentally exposes it at `/INSERTS.sql` over HTTP. Re-running it against an already-seeded DB will fail on unique constraints. (If you want it auto-applied to fresh DBs, the cleaner path is to convert it to a Flyway repeatable migration `R__seed_reference_data.sql` with idempotent `INSERT ... ON CONFLICT DO NOTHING` clauses.)

### OpenAPI / Swagger

springdoc-openapi-ui is wired up — Swagger UI at `/swagger-ui.html`, raw spec at `/v3/api-docs`. `config/OpenApiConfig.java` controls the document metadata. No extra setup needed locally.

## Conventions worth knowing

- `@Column(name = ...)` annotations are written in camelCase (`BattingOrder`), but the live DB columns are snake_case (`batting_order`). Spring Boot's default `SpringPhysicalNamingStrategy` does the conversion at runtime — no custom strategy is configured. When hand-writing Flyway DDL, use snake_case to match what's actually in Postgres.
- Lazy relationships (`FetchType.LAZY`) are the norm. Always traverse them from within `RestService` methods or you'll trip a `LazyInitializationException`.
- Logging is Log4j2 (Spring Boot's default Logback is excluded in `pom.xml`).
- This repo is API-only; the Vue frontend lives in a separate `softball-reference-ui` repo (also deployed to Heroku). CORS is wide-open in `SecurityConfig#corsConfigurationSource`.
