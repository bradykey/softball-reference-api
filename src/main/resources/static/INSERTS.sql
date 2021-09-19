-- +++++++++++++++++++++++
-- THIS COVERS THE SEASONS
-- +++++++++++++++++++++++

-- TEAMS
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

-- LEAGUES

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Spring 2018');

INSERT INTO public.league(
	name, season
)
VALUES('Sandia', 'Summer 2018');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Fall 2018');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Spring 2019');

INSERT INTO public.league(
	name, season
)
VALUES('Sandia', 'Summer 2019');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Summer 2019');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Fall 2019');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Summer 2021');

-- TEAMLEAGUE ASSOCIATIONS

-- Chups Fall 2018 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2018';

-- Chups Spring 2019 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2019';

-- Chups Summer 2019 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2019';

-- Chups Fall 2019 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2019';

-- Chups Summer 2021 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021';

-- Garden Hosers Spring 2018 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2018';

-- Garden Hosers Fall 2018 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2018';

-- Garden Hosers Fall 2019 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2019';

-- Garden Hosers Summer 2021 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021';

-- Sandia Baggers Summer 2018 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Sandia Baggers' AND league.name LIKE 'Sandia' AND league.season LIKE 'Summer 2018';

-- Sandia Baggers Summer 2018 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Sandia Baggers' AND league.name LIKE 'Sandia' AND league.season LIKE 'Summer 2019';


-- +++++++++++++++++++++++
-- THIS COVERS THE PLAYERS
-- +++++++++++++++++++++++

-- GARDEN HOSERS
INSERT INTO public.player(
	name
)
VALUES('Pat Barnes');

INSERT INTO public.player(
	name
)
VALUES('Andrew Stuart');

INSERT INTO public.player(
	name
)
VALUES('Brady Key');

INSERT INTO public.player(
	name
)
VALUES('Jason Rogers');

INSERT INTO public.player(
	name
)
VALUES('Linn Reece');

INSERT INTO public.player(
	name
)
VALUES('Tim Tribou');

INSERT INTO public.player(
	name
)
VALUES('Alex Gibbs');

INSERT INTO public.player(
	name
)
VALUES('Jon Pinsonneault');

INSERT INTO public.player(
	name
)
VALUES('Mike Parrish');

INSERT INTO public.player(
	name
)
VALUES('Brett Reece');

INSERT INTO public.player(
	name
)
VALUES('Dave Penasa');

INSERT INTO public.player(
	name
)
VALUES('Blake Reece');

INSERT INTO public.player(
	name
)
VALUES('Jamie Dickey');

-- ROSTER/SEASON LINKAGES

-- Chups Summer 2021
INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Pat Barnes';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Andrew Stuart';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Brady Key';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Jason Rogers';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Linn Reece';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Tim Tribou';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Alex Gibbs';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Jon Pinsonneault';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Mike Parrish';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Brett Reece';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Dave Penasa';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Blake Reece';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.id IN 
	(SELECT team.id, league.id 
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Jamie Dickey';

-- GAMES (JSON)
{
    "date": "2021-06-08 18:30:00" ,
    "opponent": "Mean Machine",
    "score": 8,
    "opponentScore": 5,
    "field": "Tingley #2",
    "wasHome": 1,
    "teamLeagueId": 9
}