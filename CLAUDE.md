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
- **Entities** (`model/entity/`): JPA entities mapped to existing tables (PascalCase column names, e.g. `@Column(name = "BattingOrder")`). The schema is db-first — `spring.jpa.hibernate.ddl-auto=none` in `application.properties`. Changing field names or adding columns will **not** alter the database; coordinate schema changes manually.
- **DTOs** (`model/entity/request_dto/`, `response_dto/`): plain POJOs. There are two response flavors: `*BindResponse` (skinny, for dropdown population, no relationships) and the richer `*Response` / `*SummaryResponse` types used for full views. `ResponseAndEntityBuilder` (in `utils/`) is the canonical place to add new conversions — there are MapStruct dependencies in `pom.xml` but builders are still hand-written here.

### Data model relationships

`Team` ⇄ `League` are joined through `TeamLeague` (a season-specific roster entity). `TeamLeaguePlayer` links a `Player` to a `TeamLeague` (a player's participation on a team in a given season). `Game` belongs to a `TeamLeague`. `StatLine` is the leaf: one row per player per game, FK to both `Game` and `TeamLeaguePlayer`. Stat aggregations (`AccumulatedResponse`, `PlayerSummaryResponse`, `SummaryStatLineResponse`) are computed in `ResponseAndEntityBuilder` from collections of `StatLine`s.

### Auth

JWT bearer auth via `auth/JwtAuthFilter` + `auth/SecurityConfig`. The filter chain is **public-by-default**: all `GET` and `OPTIONS` requests are permitted; only `POST /games` and `POST /statlines` require authentication. `/auth/login` issues a JWT after validating against the bcrypt-hashed `ADMIN_PASSWORD_HASH`. When adding new write endpoints, explicitly add an `antMatchers(HttpMethod.POST, ...).authenticated()` rule in `SecurityConfig` — otherwise they fall through to the `anyRequest().permitAll()` line.

### Schema & seed data

- `src/main/resources/static/INSERTS.sql` is auto-run on startup (`spring.sql.init.mode=always`, `platform=postgres`). It is **idempotent only insofar as the inserts themselves are** — re-running against an already-seeded DB will fail on unique constraints. This is mostly used for bootstrapping new environments and for adding new leagues/teams between seasons (see `e82584d`, `4448361` commits).
- `softball-reference_DDL_v1.sql` is an empty placeholder; the real DDL lives in the live Heroku DB. The branch `7-turn-on-code-first-migrations` suggests an in-progress move to code-first; until that lands, treat schema changes as a manual SQL operation.

### OpenAPI / Swagger

springdoc-openapi-ui is wired up — Swagger UI at `/swagger-ui.html`, raw spec at `/v3/api-docs`. `config/OpenApiConfig.java` controls the document metadata. No extra setup needed locally.

## Conventions worth knowing

- Column names in `@Column(name = ...)` are PascalCase, not snake_case — the live DB uses PascalCase identifiers and quoted/case-sensitive matching matters here.
- Lazy relationships (`FetchType.LAZY`) are the norm. Always traverse them from within `RestService` methods or you'll trip a `LazyInitializationException`.
- Logging is Log4j2 (Spring Boot's default Logback is excluded in `pom.xml`).
- This repo is API-only; the Vue frontend lives in a separate `softball-reference-ui` repo (also deployed to Heroku). CORS is wide-open in `SecurityConfig#corsConfigurationSource`.
