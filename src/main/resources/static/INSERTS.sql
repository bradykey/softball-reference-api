INSERT INTO public.team(
	name
)
VALUES('Chupacabras');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Summer 2021');

INSERT INTO public.team_league(
	league_id, team_id
)
VALUES(1, 1);

INSERT INTO public.game(
	date, field, opponent, opponent_score, score, team_league_id)
	VALUES (NOW(), 'Vietnam Vets 1', 'RedTails', 5, 14, 1);