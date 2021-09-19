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
-- GH Summer 2021
{
    "date": "2021-06-08 18:30:00" ,
    "opponent": "Mean Machine",
    "score": 8,
    "opponentScore": 5,
    "field": "Tingley #2",
    "wasHome": 1,
    "teamLeagueId": 9
}
{
    "date": "2021-06-15 18:30:00" ,
    "opponent": "Los Ranchos",
    "score": 4,
    "opponentScore": 18,
    "field": "Tingley #2",
    "wasHome": 0,
    "teamLeagueId": 9
}
{
    "date": "2021-06-22 20:00:00" ,
    "opponent": "Misfits",
    "score": 25,
    "opponentScore": 5,
    "field": "Vietnam Vets #1",
    "wasHome": 0,
    "teamLeagueId": 9
}
{
    "date": "2021-06-29 18:30:00" ,
    "opponent": "Bad News Bears",
    "score": 15,
    "opponentScore": 14,
    "field": "Tingley #1",
    "wasHome": 1,
    "teamLeagueId": 9
}
{
    "date": "2021-07-06 20:00:00" ,
    "opponent": "Lizards",
    "score": 5,
    "opponentScore": 9,
    "field": "Vietnam Vets #1",
    "wasHome": 0,
    "teamLeagueId": 9
}
{
    "date": "2021-07-13 18:30:00" ,
    "opponent": "The Legends",
    "score": 0,
    "opponentScore": 12,
    "field": "Vietnam Vets #2",
    "wasHome": 1,
    "teamLeagueId": 9
}
{
    "date": "2021-07-20 19:30:00" ,
    "opponent": "Duke City Hooligans",
    "score": 10,
    "opponentScore": 19,
    "field": "Tingley #1",
    "wasHome": 1,
    "teamLeagueId": 9
}
{
    "date": "2021-07-27 18:30:00" ,
    "opponent": "?",
    "score": 0,
    "opponentScore": 1,
    "field": "Vietnam Vets #1",
    "wasHome": 1,
    "teamLeagueId": 9
}
{
    "date": "2021-08-03 19:30:00" ,
    "opponent": "?",
    "score": 0,
    "opponentScore": 1,
    "field": "Vietnam Vets #1",
    "wasHome": 0,
    "teamLeagueId": 9
}
{
    "date": "2021-08-10 18:30:00" ,
    "opponent": "Mean Machine",
    "score": 7,
    "opponentScore": 17,
    "field": "Tingley #2",
    "wasHome": 0,
    "teamLeagueId": 9
}
{
    "date": "2021-08-17 18:30:00" ,
    "opponent": "Los Ranchos",
    "score": 1,
    "opponentScore": 13,
    "field": "Tingley #2",
    "wasHome": 1,
    "teamLeagueId": 9
}
{
    "date": "2021-08-31 18:30:00" ,
    "opponent": "Bad News Bears",
    "score": 19,
    "opponentScore": 3,
    "field": "Tingley #1",
    "wasHome": 0,
    "teamLeagueId": 9
}
{
    "date": "2021-09-07 19:30:00" ,
    "opponent": "Lizards",
    "score": 18,
    "opponentScore": 17,
    "field": "Vietnam Vets #1",
    "wasHome": 1,
    "teamLeagueId": 9
}
{
    "date": "2021-09-14 18:30:00" ,
    "opponent": "The Legends",
    "score": 18,
    "opponentScore": 8,
    "field": "Vietnam Vets #2",
    "wasHome": 0,
    "teamLeagueId": 9
}
