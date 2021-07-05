INSERT INTO public.team(
	name
)
VALUES('Chupacabras');

INSERT INTO public.team(
	name
)
VALUES('Garden Hosers');

INSERT INTO public.team(
	name
)
VALUES('Sandia Baggers');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Spring 2018');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Fall 2018');

INSERT INTO public.league(
	name, season
)
VALUES('Sandia', 'Summer 2018');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Spring 2019');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Summer 2021');

-- Garden Hosers Spring 18
INSERT INTO public.team_league(
	team_id, league_id
)
VALUES(2, 1);

-- Chups Fall 18
INSERT INTO public.team_league(
	team_id, league_id
)
VALUES(1, 2);

-- Baggers Summer 18
INSERT INTO public.team_league(
	team_id, league_id
)
VALUES(3, 3);

-- Chups Spring 19
INSERT INTO public.team_league(
	team_id, league_id
)
VALUES(1, 4);

-- Chups Summer 2021
INSERT INTO public.team_league(
	team_id, league_id
)
VALUES(1, 5);

-- Garden Hosers Summer 2021
INSERT INTO public.team_league(
	team_id, league_id
)
VALUES(2, 5);

INSERT INTO public.game(
	date, field, opponent, opponent_score, score, team_league_id)
	VALUES (NOW(), 'Vietnam Vets 1', 'RedTails', 5, 14, 1);