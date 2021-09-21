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

INSERT INTO public.player(
	name
)
VALUES('Rob');

-- ROSTER/SEASON LINKAGES

-- GH Summer 2021
INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Pat Barnes';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Andrew Stuart';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Brady Key';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Jason Rogers';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Linn Reece';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Tim Tribou';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Alex Gibbs';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Jon Pinsonneault';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Mike Parrish';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Brett Reece';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Dave Penasa';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Blake Reece';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Jamie Dickey';

INSERT INTO public.team_league_player(
	team_league_id, player_id
)
SELECT team_league.id, player.id 
FROM public.team_league AS team_league, public.player AS player 
WHERE team_league.team_id IN 
	(SELECT team.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND team_league.league_id IN
	(SELECT league.id
	FROM public.team AS team, public.league AS league 
	WHERE team.name LIKE 'Garden Hosers' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
AND player.name LIKE 'Rob';

-- GAMES (JSON)
-- GH Summer 2021
{
    "date": "2021-06-08 18:30:00" ,
    "opponent": "Mean Machine",
    "score": 9,
    "opponentScore": 5,
    "field": "Tingley #2",
    "wasHome": 1,
    "teamLeagueId": 9
}
	{
		"gameId": 1,
		"teamLeaguePlayerId": 1,
		"bO": 1,
		"pA": 4,
		"r": 1,
		"rBI": 2,
		"b1": 4,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 1,
		"teamLeaguePlayerId": 3,
		"bO": 2,
		"pA": 4,
		"r": 0,
		"rBI": 3,
		"b1": 2,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 1,
		"teamLeaguePlayerId": 13,
		"bO": 3,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 1,
		"teamLeaguePlayerId": 4,
		"bO": 4,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 1,
		"teamLeaguePlayerId": 12,
		"bO": 5,
		"pA": 3,
		"r": 2,
		"rBI": 0,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 1,
		"teamLeaguePlayerId": 9,
		"bO": 6,
		"pA": 3,
		"r": 1,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 2,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 1,
		"teamLeaguePlayerId": 5,
		"bO": 7,
		"pA": 3,
		"r": 1,
		"rBI": 2,
		"b1": 0,
		"b2": 1,
		"b3": 1,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 1,
		"teamLeaguePlayerId": 6,
		"bO": 8,
		"pA": 3,
		"r": 1,
		"rBI": 1,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 1,
		"teamLeaguePlayerId": 10,
		"bO": 9,
		"pA": 3,
		"r": 1,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 1,
		"teamLeaguePlayerId": 7,
		"bO": 10,
		"pA": 3,
		"r": 2,
		"rBI": 0,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 1,
		"teamLeaguePlayerId": 11,
		"bO": 11,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
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
		"gameId": 2,
		"teamLeaguePlayerId": 1,
		"bO": 1,
		"pA": 3,
		"r": 1,
		"rBI": 0,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 2,
		"teamLeaguePlayerId": 2,
		"bO": 2,
		"pA": 3,
		"r": 0,
		"rBI": 1,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 2,
		"teamLeaguePlayerId": 3,
		"bO": 3,
		"pA": 3,
		"r": 1,
		"rBI": 0,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 2,
		"teamLeaguePlayerId": 13,
		"bO": 4,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 2,
		"teamLeaguePlayerId": 9,
		"bO": 5,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 2,
		"teamLeaguePlayerId": 12,
		"bO": 6,
		"pA": 3,
		"r": 0,
		"rBI": 2,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 2,
		"teamLeaguePlayerId": 5,
		"bO": 7,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 2,
		"teamLeaguePlayerId": 6,
		"bO": 8,
		"pA": 3,
		"r": 1,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 2,
		"teamLeaguePlayerId": 7,
		"bO": 9,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 2,
		"teamLeaguePlayerId": 10,
		"bO": 10,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}	
	{
		"gameId": 2,
		"teamLeaguePlayerId": 11,
		"bO": 11,
		"pA": 2,
		"r": 1,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
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
		"gameId": 3,
		"teamLeaguePlayerId": 2,
		"bO": 1,
		"pA": 5,
		"r": 3,
		"rBI": 2,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 3,
		"teamLeaguePlayerId": 3,
		"bO": 2,
		"pA": 5,
		"r": 4,
		"rBI": 3,
		"b1": 2,
		"b2": 1,
		"b3": 1,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 3,
		"teamLeaguePlayerId": 13,
		"bO": 3,
		"pA": 5,
		"r": 4,
		"rBI": 2,
		"b1": 4,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 3,
		"teamLeaguePlayerId": 4,
		"bO": 4,
		"pA": 5,
		"r": 4,
		"rBI": 4,
		"b1": 1,
		"b2": 2,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 3,
		"teamLeaguePlayerId": 12,
		"bO": 5,
		"pA": 4,
		"r": 2,
		"rBI": 5,
		"b1": 1,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 1,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 3,
		"teamLeaguePlayerId": 9,
		"bO": 6,
		"pA": 4,
		"r": 1,
		"rBI": 1,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 3,
		"teamLeaguePlayerId": 5,
		"bO": 7,
		"pA": 4,
		"r": 1,
		"rBI": 4,
		"b1": 1,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 1,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 3,
		"teamLeaguePlayerId": 6,
		"bO": 8,
		"pA": 4,
		"r": 1,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 1,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 1,
		"lOB": 0
	}
	{
		"gameId": 3,
		"teamLeaguePlayerId": 10,
		"bO": 9,
		"pA": 4,
		"r": 2,
		"rBI": 1,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 1,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 3,
		"teamLeaguePlayerId": 1,
		"bO": 10,
		"pA": 4,
		"r": 3,
		"rBI": 0,
		"b1": 0,
		"b2": 2,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
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
		"gameId": 4,
		"teamLeaguePlayerId": 1,
		"bO": 1,
		"pA": 4,
		"r": 2,
		"rBI": 2,
		"b1": 1,
		"b2": 0,
		"b3": 1,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 4,
		"teamLeaguePlayerId": 2,
		"bO": 2,
		"pA": 4,
		"r": 2,
		"rBI": 2,
		"b1": 1,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 4,
		"teamLeaguePlayerId": 3,
		"bO": 3,
		"pA": 4,
		"r": 1,
		"rBI": 0,
		"b1": 0,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 4,
		"teamLeaguePlayerId": 13,
		"bO": 4,
		"pA": 4,
		"r": 2,
		"rBI": 2,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 4,
		"teamLeaguePlayerId": 9,
		"bO": 5,
		"pA": 4,
		"r": 1,
		"rBI": 2,
		"b1": 1,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 4,
		"teamLeaguePlayerId": 5,
		"bO": 6,
		"pA": 4,
		"r": 1,
		"rBI": 1,
		"b1": 1,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 4,
		"teamLeaguePlayerId": 4,
		"bO": 7,
		"pA": 4,
		"r": 1,
		"rBI": 2,
		"b1": 0,
		"b2": 2,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 4,
		"teamLeaguePlayerId": 6,
		"bO": 8,
		"pA": 4,
		"r": 2,
		"rBI": 1,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 4,
		"teamLeaguePlayerId": 10,
		"bO": 9,
		"pA": 4,
		"r": 1,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 1,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 1,
		"lOB": 0
	}
	{
		"gameId": 4,
		"teamLeaguePlayerId": 14,
		"bO": 10,
		"pA": 3,
		"r": 2,
		"rBI": 1,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
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
		"gameId": 5,
		"teamLeaguePlayerId": 1,
		"bO": 1,
		"pA": 3,
		"r": 2,
		"rBI": 0,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 5,
		"teamLeaguePlayerId": 2,
		"bO": 2,
		"pA": 3,
		"r": 2,
		"rBI": 1,
		"b1": 1,
		"b2": 0,
		"b3": 1,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 5,
		"teamLeaguePlayerId": 3,
		"bO": 3,
		"pA": 3,
		"r": 1,
		"rBI": 2,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 5,
		"teamLeaguePlayerId": 13,
		"bO": 4,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 5,
		"teamLeaguePlayerId": 9,
		"bO": 5,
		"pA": 2,
		"r": 0,
		"rBI": 1,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 5,
		"teamLeaguePlayerId": 5,
		"bO": 6,
		"pA": 2,
		"r": 0,
		"rBI": 1,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 5,
		"teamLeaguePlayerId": 6,
		"bO": 7,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 5,
		"teamLeaguePlayerId": 11,
		"bO": 8,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 5,
		"teamLeaguePlayerId": 7,
		"bO": 9,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 5,
		"teamLeaguePlayerId": 14,
		"bO": 10,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 5,
		"teamLeaguePlayerId": 12,
		"bO": 11,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
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
		"gameId": 6,
		"teamLeaguePlayerId": 1,
		"bO": 1,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 6,
		"teamLeaguePlayerId": 2,
		"bO": 2,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 6,
		"teamLeaguePlayerId": 3,
		"bO": 3,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 2,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 6,
		"teamLeaguePlayerId": 13,
		"bO": 4,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 6,
		"teamLeaguePlayerId": 5,
		"bO": 5,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 6,
		"teamLeaguePlayerId": 12,
		"bO": 6,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 6,
		"teamLeaguePlayerId": 9,
		"bO": 7,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 6,
		"teamLeaguePlayerId": 7,
		"bO": 8,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 6,
		"teamLeaguePlayerId": 10,
		"bO": 9,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 6,
		"teamLeaguePlayerId": 11,
		"bO": 10,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
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
		"gameId": 7,
		"teamLeaguePlayerId": 1,
		"bO": 1,
		"pA": 4,
		"r": 3,
		"rBI": 0,
		"b1": 2,
		"b2": 0,
		"b3": 1,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 7,
		"teamLeaguePlayerId": 3,
		"bO": 2,
		"pA": 4,
		"r": 1,
		"rBI": 1,
		"b1": 0,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 1,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 7,
		"teamLeaguePlayerId": 13,
		"bO": 3,
		"pA": 4,
		"r": 3,
		"rBI": 1,
		"b1": 4,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 7,
		"teamLeaguePlayerId": 5,
		"bO": 4,
		"pA": 4,
		"r": 1,
		"rBI": 2,
		"b1": 1,
		"b2": 2,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 7,
		"teamLeaguePlayerId": 9,
		"bO": 5,
		"pA": 4,
		"r": 1,
		"rBI": 2,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 7,
		"teamLeaguePlayerId": 7,
		"bO": 6,
		"pA": 4,
		"r": 1,
		"rBI": 1,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 2,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 7,
		"teamLeaguePlayerId": 11,
		"bO": 7,
		"pA": 4,
		"r": 0,
		"rBI": 1,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 7,
		"teamLeaguePlayerId": 6,
		"bO": 8,
		"pA": 3,
		"r": 0,
		"rBI": 1,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 1,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 7,
		"teamLeaguePlayerId": 10,
		"bO": 9,
		"pA": 3,
		"r": 0,
		"rBI": 1,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 7,
		"teamLeaguePlayerId": 14,
		"bO": 10,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
{
    "date": "2021-07-27 18:30:00" ,
    "opponent": "Donut Squad",
    "score": 6,
    "opponentScore": 5,
    "field": "Vietnam Vets #1",
    "wasHome": 1,
    "teamLeagueId": 9
}
{
    "date": "2021-08-03 19:30:00" ,
    "opponent": "ASM Crew",
    "score": 0,
    "opponentScore": 11,
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
		"gameId": 10,
		"teamLeaguePlayerId": 11,
		"bO": 1,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 10,
		"teamLeaguePlayerId": 6,
		"bO": 2,
		"pA": 3,
		"r": 1,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 1,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 1,
		"lOB": 0
	}
	{
		"gameId": 10,
		"teamLeaguePlayerId": 10,
		"bO": 3,
		"pA": 3,
		"r": 1,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 10,
		"teamLeaguePlayerId": 1,
		"bO": 4,
		"pA": 3,
		"r": 2,
		"rBI": 0,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 10,
		"teamLeaguePlayerId": 3,
		"bO": 5,
		"pA": 3,
		"r": 2,
		"rBI": 1,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 10,
		"teamLeaguePlayerId": 5,
		"bO": 6,
		"pA": 3,
		"r": 1,
		"rBI": 1,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 10,
		"teamLeaguePlayerId": 2,
		"bO": 7,
		"pA": 3,
		"r": 0,
		"rBI": 4,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 10,
		"teamLeaguePlayerId": 7,
		"bO": 8,
		"pA": 3,
		"r": 0,
		"rBI": 1,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 1,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 10,
		"teamLeaguePlayerId": 8,
		"bO": 9,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 10,
		"teamLeaguePlayerId": 9,
		"bO": 10,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 10,
		"teamLeaguePlayerId": 4,
		"bO": 11,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
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
		"gameId": 11,
		"teamLeaguePlayerId": 1,
		"bO": 1,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 11,
		"teamLeaguePlayerId": 2,
		"bO": 2,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 11,
		"teamLeaguePlayerId": 3,
		"bO": 3,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 11,
		"teamLeaguePlayerId": 4,
		"bO": 4,
		"pA": 2,
		"r": 1,
		"rBI": 0,
		"b1": 0,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 1,
		"lOB": 0
	}
	{
		"gameId": 11,
		"teamLeaguePlayerId": 5,
		"bO": 5,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 11,
		"teamLeaguePlayerId": 6,
		"bO": 6,
		"pA": 2,
		"r": 0,
		"rBI": 1,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 11,
		"teamLeaguePlayerId": 7,
		"bO": 7,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 11,
		"teamLeaguePlayerId": 9,
		"bO": 8,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 11,
		"teamLeaguePlayerId": 11,
		"bO": 9,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 11,
		"teamLeaguePlayerId": 10,
		"bO": 10,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 11,
		"teamLeaguePlayerId": 12,
		"bO": 11,
		"pA": 1,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
{
    "date": "2021-08-24 18:30:00" ,
    "opponent": "Misfits",
    "score": 14,
    "opponentScore": 13,
    "field": "Vietnam Vets #1",
    "wasHome": 1,
    "teamLeagueId": 9
}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 12,
		"bO": 1,
		"pA": 3,
		"r": 3,
		"rBI": 0,
		"b1": 2,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 1,
		"bO": 2,
		"pA": 3,
		"r": 2,
		"rBI": 1,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 1,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 2,
		"bO": 3,
		"pA": 3,
		"r": 2,
		"rBI": 2,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 1,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 3,
		"bO": 4,
		"pA": 3,
		"r": 1,
		"rBI": 1,
		"b1": 1,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 4,
		"bO": 5,
		"pA": 3,
		"r": 1,
		"rBI": 1,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 13,
		"bO": 6,
		"pA": 3,
		"r": 1,
		"rBI": 3,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 1,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 5,
		"bO": 7,
		"pA": 3,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 8,
		"bO": 8,
		"pA": 0,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 6,
		"bO": 9,
		"pA": 2,
		"r": 0,
		"rBI": 1,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 9,
		"bO": 10,
		"pA": 2,
		"r": 0,
		"rBI": 2,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 11,
		"bO": 11,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 7,
		"bO": 12,
		"pA": 2,
		"r": 0,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 12,
		"teamLeaguePlayerId": 10,
		"bO": 13,
		"pA": 2,
		"r": 2,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
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
		"gameId": 13,
		"teamLeaguePlayerId": 1,
		"bO": 1,
		"pA": 4,
		"r": 3,
		"rBI": 3,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 13,
		"teamLeaguePlayerId": 2,
		"bO": 2,
		"pA": 4,
		"r": 2,
		"rBI": 2,
		"b1": 1,
		"b2": 0,
		"b3": 1,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 13,
		"teamLeaguePlayerId": 3,
		"bO": 3,
		"pA": 4,
		"r": 1,
		"rBI": 3,
		"b1": 1,
		"b2": 0,
		"b3": 2,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 13,
		"teamLeaguePlayerId": 4,
		"bO": 4,
		"pA": 4,
		"r": 1,
		"rBI": 2,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 13,
		"teamLeaguePlayerId": 13,
		"bO": 5,
		"pA": 4,
		"r": 2,
		"rBI": 0,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 13,
		"teamLeaguePlayerId": 8,
		"bO": 6,
		"pA": 4,
		"r": 1,
		"rBI": 1,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 13,
		"teamLeaguePlayerId": 12,
		"bO": 7,
		"pA": 4,
		"r": 1,
		"rBI": 0,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 13,
		"teamLeaguePlayerId": 5,
		"bO": 8,
		"pA": 3,
		"r": 2,
		"rBI": 3,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 13,
		"teamLeaguePlayerId": 6,
		"bO": 9,
		"pA": 3,
		"r": 2,
		"rBI": 1,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 13,
		"teamLeaguePlayerId": 7,
		"bO": 10,
		"pA": 3,
		"r": 1,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 1,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 13,
		"teamLeaguePlayerId": 10,
		"bO": 11,
		"pA": 3,
		"r": 1,
		"rBI": 0,
		"b1": 0,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 2,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 13,
		"teamLeaguePlayerId": 9,
		"bO": 12,
		"pA": 3,
		"r": 2,
		"rBI": 1,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 1,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
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
		"gameId": 14,
		"teamLeaguePlayerId": 1,
		"bO": 1,
		"pA": 5,
		"r": 2,
		"rBI": 1,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 14,
		"teamLeaguePlayerId": 2,
		"bO": 2,
		"pA": 5,
		"r": 2,
		"rBI": 3,
		"b1": 2,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 14,
		"teamLeaguePlayerId": 3,
		"bO": 3,
		"pA": 5,
		"r": 1,
		"rBI": 3,
		"b1": 4,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 14,
		"teamLeaguePlayerId": 12,
		"bO": 4,
		"pA": 4,
		"r": 2,
		"rBI": 1,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 14,
		"teamLeaguePlayerId": 9,
		"bO": 5,
		"pA": 4,
		"r": 2,
		"rBI": 0,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 14,
		"teamLeaguePlayerId": 5,
		"bO": 6,
		"pA": 4,
		"r": 3,
		"rBI": 2,
		"b1": 1,
		"b2": 0,
		"b3": 1,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 14,
		"teamLeaguePlayerId": 6,
		"bO": 7,
		"pA": 4,
		"r": 2,
		"rBI": 0,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 14,
		"teamLeaguePlayerId": 11,
		"bO": 8,
		"pA": 4,
		"r": 2,
		"rBI": 5,
		"b1": 4,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 14,
		"teamLeaguePlayerId": 10,
		"bO": 9,
		"pA": 4,
		"r": 2,
		"rBI": 2,
		"b1": 1,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
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
	{
		"gameId": 15,
		"teamLeaguePlayerId": 1,
		"bO": 1,
		"pA": 4,
		"r": 2,
		"rBI": 2,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 1,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 15,
		"teamLeaguePlayerId": 2,
		"bO": 2,
		"pA": 4,
		"r": 2,
		"rBI": 0,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 15,
		"teamLeaguePlayerId": 3,
		"bO": 3,
		"pA": 4,
		"r": 2,
		"rBI": 3,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 1,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 15,
		"teamLeaguePlayerId": 4,
		"bO": 4,
		"pA": 4,
		"r": 2,
		"rBI": 2,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 1,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 15,
		"teamLeaguePlayerId": 13,
		"bO": 5,
		"pA": 4,
		"r": 1,
		"rBI": 4,
		"b1": 2,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 15,
		"teamLeaguePlayerId": 9,
		"bO": 6,
		"pA": 4,
		"r": 1,
		"rBI": 2,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 15,
		"teamLeaguePlayerId": 5,
		"bO": 7,
		"pA": 4,
		"r": 1,
		"rBI": 1,
		"b1": 2,
		"b2": 1,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 15,
		"teamLeaguePlayerId": 6,
		"bO": 8,
		"pA": 3,
		"r": 1,
		"rBI": 0,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 1,
		"lOB": 0
	}
	{
		"gameId": 15,
		"teamLeaguePlayerId": 11,
		"bO": 9,
		"pA": 3,
		"r": 1,
		"rBI": 1,
		"b1": 1,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 1,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 15,
		"teamLeaguePlayerId": 7,
		"bO": 10,
		"pA": 3,
		"r": 2,
		"rBI": 1,
		"b1": 2,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}
	{
		"gameId": 15,
		"teamLeaguePlayerId": 10,
		"bO": 11,
		"pA": 3,
		"r": 3,
		"rBI": 1,
		"b1": 3,
		"b2": 0,
		"b3": 0,
		"hR": 0,
		"bB": 0,
		"sO": 0,
		"sAC": 0,
		"hR4O": 0,
		"fO": 0,
		"gIDP": 0,
		"lOB": 0
	}

--	STATLINE TEMPLATE
	{
		"gameId": ,
		"teamLeaguePlayerId": ,
		"bO": 1,
		"pA": ,
		"r": ,
		"rBI": ,
		"b1": ,
		"b2": ,
		"b3": ,
		"hR": ,
		"bB": ,
		"sO": ,
		"sAC": ,
		"hR4O": ,
		"fO": ,
		"gIDP": ,
		"lOB": 0
	}
	{
		"gameId": ,
		"teamLeaguePlayerId": ,
		"bO": 2,
		"pA": ,
		"r": ,
		"rBI": ,
		"b1": ,
		"b2": ,
		"b3": ,
		"hR": ,
		"bB": ,
		"sO": ,
		"sAC": ,
		"hR4O": ,
		"fO": ,
		"gIDP": ,
		"lOB": 0
	}
	{
		"gameId": ,
		"teamLeaguePlayerId": ,
		"bO": 3,
		"pA": ,
		"r": ,
		"rBI": ,
		"b1": ,
		"b2": ,
		"b3": ,
		"hR": ,
		"bB": ,
		"sO": ,
		"sAC": ,
		"hR4O": ,
		"fO": ,
		"gIDP": ,
		"lOB": 0
	}
	{
		"gameId": ,
		"teamLeaguePlayerId": ,
		"bO": 4,
		"pA": ,
		"r": ,
		"rBI": ,
		"b1": ,
		"b2": ,
		"b3": ,
		"hR": ,
		"bB": ,
		"sO": ,
		"sAC": ,
		"hR4O": ,
		"fO": ,
		"gIDP": ,
		"lOB": 0
	}
	{
		"gameId": ,
		"teamLeaguePlayerId": ,
		"bO": 5,
		"pA": ,
		"r": ,
		"rBI": ,
		"b1": ,
		"b2": ,
		"b3": ,
		"hR": ,
		"bB": ,
		"sO": ,
		"sAC": ,
		"hR4O": ,
		"fO": ,
		"gIDP": ,
		"lOB": 0
	}
	{
		"gameId": ,
		"teamLeaguePlayerId": ,
		"bO": 6,
		"pA": ,
		"r": ,
		"rBI": ,
		"b1": ,
		"b2": ,
		"b3": ,
		"hR": ,
		"bB": ,
		"sO": ,
		"sAC": ,
		"hR4O": ,
		"fO": ,
		"gIDP": ,
		"lOB": 0
	}
	{
		"gameId": ,
		"teamLeaguePlayerId": ,
		"bO": 7,
		"pA": ,
		"r": ,
		"rBI": ,
		"b1": ,
		"b2": ,
		"b3": ,
		"hR": ,
		"bB": ,
		"sO": ,
		"sAC": ,
		"hR4O": ,
		"fO": ,
		"gIDP": ,
		"lOB": 0
	}
	{
		"gameId": ,
		"teamLeaguePlayerId": ,
		"bO": 8,
		"pA": ,
		"r": ,
		"rBI": ,
		"b1": ,
		"b2": ,
		"b3": ,
		"hR": ,
		"bB": ,
		"sO": ,
		"sAC": ,
		"hR4O": ,
		"fO": ,
		"gIDP": ,
		"lOB": 0
	}
	{
		"gameId": ,
		"teamLeaguePlayerId": ,
		"bO": 9,
		"pA": ,
		"r": ,
		"rBI": ,
		"b1": ,
		"b2": ,
		"b3": ,
		"hR": ,
		"bB": ,
		"sO": ,
		"sAC": ,
		"hR4O": ,
		"fO": ,
		"gIDP": ,
		"lOB": 0
	}
	{
		"gameId": ,
		"teamLeaguePlayerId": ,
		"bO": 10,
		"pA": ,
		"r": ,
		"rBI": ,
		"b1": ,
		"b2": ,
		"b3": ,
		"hR": ,
		"bB": ,
		"sO": ,
		"sAC": ,
		"hR4O": ,
		"fO": ,
		"gIDP": ,
		"lOB": 0
	}