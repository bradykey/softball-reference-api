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

INSERT INTO public.team(
	name
)
VALUES('Softball-Reference.com');

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

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Spring 2022');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Summer 2022');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Fall 2022');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Spring 2023');

INSERT INTO public.league(
	name, season
)
VALUES('City', 'Summer 2023');

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

-- Chups Spring 2022 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022';

-- Chups Summer 2022 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022';

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

-- Softball-Reference.com Spring 2022 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022';

-- Softball-Reference.com Summer 2022 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022';

-- Softball-Reference.com Fall 2022 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022';

-- Softball-Reference.com Spring 2023 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023';

-- Softball-Reference.com Summer 2023 City
INSERT INTO public.team_league(
	team_id, league_id
)
SELECT team.id, league.id 
FROM public.team AS team, public.league AS league 
WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023';

-- +++++++++++++++++++++++
-- THIS COVERS THE PLAYERS
-- +++++++++++++++++++++++

-- GARDEN HOSERS/SOFTBALL-REFERENCE.COM
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
	VALUES('Rob Delgado');

	INSERT INTO public.player(
		name
	)
	VALUES('Dan Watkins');

	INSERT INTO public.player(
		name
	)
	VALUES('Sean Babiniec');

	INSERT INTO public.player(
		name
	)
	VALUES('Brendon');

	INSERT INTO public.player(
		name
	)
	VALUES('Isaiah')

	INSERT INTO public.player(
		name
	)
	VALUES('Josh')

-- Chupacabras
	INSERT INTO public.player(
		name
	)
	VALUES('Jacob Coffman');

	INSERT INTO public.player(
		name
	)
	VALUES('Michael Rubio');

	INSERT INTO public.player(
		name
	)
	VALUES('Tyler Black');

	INSERT INTO public.player(
		name
	)
	VALUES('Zak Kupferer');

	INSERT INTO public.player(
		name
	)
	VALUES('Mike Romero');

	INSERT INTO public.player(
		name
	)
	VALUES('Shawn Guerrero');

	INSERT INTO public.player(
		name
	)
	VALUES('Ray Sanchez');

	INSERT INTO public.player(
		name
	)
	VALUES('Gabe Davilla');

	INSERT INTO public.player(
		name
	)
	VALUES('Ronnie Black');

	INSERT INTO public.player(
		name
	)
	VALUES('Justin Bowie');

	INSERT INTO public.player(
		name
	)
	VALUES('Jeremy Lachmann');

	INSERT INTO public.player(
		name
	)
	VALUES('Chris Coffman');

	INSERT INTO public.player(
		name
	)
	VALUES('Chris Boren');

	INSERT INTO public.player(
		name
	)
	VALUES('Nate Burrock');

	INSERT INTO public.player(
		name
	)
	VALUES('Jorie Cordova');

	INSERT INTO public.player(
		name
	)
	VALUES('JJ Maloney');

	INSERT INTO public.player(
		name
	)
	VALUES('Keith');

	INSERT INTO public.player(
		name
	)
	VALUES('Chris Torres');

	INSERT INTO public.player(
		name
	)
	VALUES('Tyler Cheshire');

	INSERT INTO public.player(
		name
	)
	VALUES('Drew Macphee');

	INSERT INTO public.player(
		name
	)
	VALUES('Steve Turos');

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

-- Chupacabras Summer 2021
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Jacob Coffman';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Michael Rubio';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Tyler Black';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Zak Kupferer';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Mike Romero';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Shawn Guerrero';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Ray Sanchez';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Gabe Davilla';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Ronnie Black';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Justin Bowie';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Jeremy Lachmann';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Chris Coffman';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Chris Boren';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE '';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Nate Burrock';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Jorie Cordova';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'JJ Maloney';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Keith';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Chris Torres';

		INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Tyler Cheshire';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Brady Key';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2021')
	AND player.name LIKE 'Drew Macphee';

-- Sb-Ref.com Spring 2022
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Pat Barnes';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Andrew Stuart';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Brady Key';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Jason Rogers';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Linn Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Tim Tribou';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Alex Gibbs';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Jon Pinsonneault';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Mike Parrish';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Brett Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Dave Penasa';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Blake Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Jamie Dickey';

-- Chupacabras Spring 2022
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Jacob Coffman';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Michael Rubio';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Tyler Black';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Zak Kupferer';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Mike Romero';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Shawn Guerrero';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Ray Sanchez';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Gabe Davilla';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Ronnie Black';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Justin Bowie';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Jeremy Lachmann';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Chris Coffman';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Brady Key';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2022')
	AND player.name LIKE 'Steve Turos';

-- Sb-Ref.com Summer 2022
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Brady Key';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Jason Rogers';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Linn Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Tim Tribou';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Alex Gibbs';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Jon Pinsonneault';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Brett Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Dave Penasa';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Blake Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Jamie Dickey';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Dan Watkins';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Andrew Stuart';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Mike Parrish';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Sean';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Brendon';

-- Chupacabras Summer 2022
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Jacob Coffman';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Michael Rubio';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Tyler Black';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Zak Kupferer';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Mike Romero';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Shawn Guerrero';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Ray Sanchez';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Gabe Davilla';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Ronnie Black';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Justin Bowie';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Jeremy Lachmann';
	
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Chris Coffman';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Brady Key';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'JJ Maloney';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Keith';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Chupacabras' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2022')
	AND player.name LIKE 'Chris Boren';

-- Sb-Ref.com Fall 2022
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Brady Key';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Jason Rogers';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Linn Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Tim Tribou';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Alex Gibbs';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Jon Pinsonneault';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Brett Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Dave Penasa';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Blake Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Jamie Dickey';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Dan Watkins';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Andrew Stuart';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Mike Parrish';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Fall 2022')
	AND player.name LIKE 'Sean Babiniec';

-- Sb-Ref.com Spring 2023
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Brady Key';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Jason Rogers';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Linn Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Tim Tribou';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Alex Gibbs';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Jon Pinsonneault';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Brett Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Dave Penasa';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Blake Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Jamie Dickey';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Dan Watkins';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Andrew Stuart';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Mike Parrish';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Sean Babiniec';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Spring 2023')
	AND player.name LIKE 'Brendon';

-- Sb-Ref.com Summer 2023
	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Brady Key';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Jason Rogers';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Linn Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Tim Tribou';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Alex Gibbs';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Jon Pinsonneault';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Brett Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Dave Penasa';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Blake Reece';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Jamie Dickey';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Dan Watkins';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Andrew Stuart';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Mike Parrish';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Sean Babiniec';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Brendon';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Isaiah';

	INSERT INTO public.team_league_player(
		team_league_id, player_id
	)
	SELECT team_league.id, player.id 
	FROM public.team_league AS team_league, public.player AS player 
	WHERE team_league.team_id IN 
		(SELECT team.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND team_league.league_id IN
		(SELECT league.id
		FROM public.team AS team, public.league AS league 
		WHERE team.name LIKE 'Softball-Reference.com' AND league.name LIKE 'City' AND league.season LIKE 'Summer 2023')
	AND player.name LIKE 'Josh';

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

	{
	    "date": "2021-09-21 19:30:00" ,
	    "opponent": "Duke City Hooligans",
	    "score": 15,
	    "opponentScore": 19,
	    "field": "Tingley #2",
	    "wasHome": 1,
	    "teamLeagueId": 9
	}
		{
			"gameId": 16,
			"teamLeaguePlayerId": 1,
			"bO": 1,
			"pA": 4,
			"r": 2,
			"rBI": 2,
			"b1": 2,
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
			"gameId": 16,
			"teamLeaguePlayerId": 2,
			"bO": 2,
			"pA": 4,
			"r": 1,
			"rBI": 2,
			"b1": 0,
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
			"gameId": 16,
			"teamLeaguePlayerId": 3,
			"bO": 3,
			"pA": 4,
			"r": 3,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 16,
			"teamLeaguePlayerId": 4,
			"bO": 4,
			"pA": 4,
			"r": 1,
			"rBI": 3,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 16,
			"teamLeaguePlayerId": 13,
			"bO": 5,
			"pA": 3,
			"r": 2,
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
			"gameId": 16,
			"teamLeaguePlayerId": 12,
			"bO": 6,
			"pA": 3,
			"r": 1,
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
			"gameId": 16,
			"teamLeaguePlayerId": 8,
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
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 16,
			"teamLeaguePlayerId": 9,
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
			"gameId": 16,
			"teamLeaguePlayerId": 5,
			"bO": 9,
			"pA": 3,
			"r": 1,
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
			"gameId": 16,
			"teamLeaguePlayerId": 6,
			"bO": 10,
			"pA": 3,
			"r": 1,
			"rBI": 1,
			"b1": 1,
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
			"gameId": 16,
			"teamLeaguePlayerId": 11,
			"bO": 11,
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
			"gameId": 16,
			"teamLeaguePlayerId": 10,
			"bO": 12,
			"pA": 3,
			"r": 0,
			"rBI": 1,
			"b1": 0,
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
			"gameId": 16,
			"teamLeaguePlayerId": 7,
			"bO": 13,
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

-- Chups Summer 2021
	{
	    "date": "2021-06-11 18:30:00" ,
	    "opponent": "Beerito Slammers",
	    "score": 8,
	    "opponentScore": 11,
	    "field": "Vietnam Vets #2",
	    "wasHome": 0,
	    "teamLeagueId": 5
	}
	{
	    "date": "2021-06-25 18:30:00" ,
	    "opponent": "Red Tails",
	    "score": 23,
	    "opponentScore": 13,
	    "field": "Vietnam Vets #1",
	    "wasHome": 1,
	    "teamLeagueId": 5
	}
		{
			"gameId": 18,
			"teamLeaguePlayerId": 15,
			"bO": 1,
			"pA": 4,
			"r": 1,
			"rBI": 2,
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
			"gameId": 18,
			"teamLeaguePlayerId": 34,
			"bO": 2,
			"pA": 4,
			"r": 1,
			"rBI": 1,
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
			"gameId": 18,
			"teamLeaguePlayerId": 16,
			"bO": 3,
			"pA": 4,
			"r": 1,
			"rBI": 2,
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
			"gameId": 18,
			"teamLeaguePlayerId": 17,
			"bO": 4,
			"pA": 4,
			"r": 2,
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
			"gameId": 18,
			"teamLeaguePlayerId": 18,
			"bO": 5,
			"pA": 4,
			"r": 3,
			"rBI": 4,
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
			"gameId": 18,
			"teamLeaguePlayerId": 19,
			"bO": 6,
			"pA": 4,
			"r": 2,
			"rBI": 1,
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
			"gameId": 18,
			"teamLeaguePlayerId": 20,
			"bO": 7,
			"pA": 4,
			"r": 2,
			"rBI": 2,
			"b1": 0,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 18,
			"teamLeaguePlayerId": 21,
			"bO": 8,
			"pA": 4,
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
			"gameId": 18,
			"teamLeaguePlayerId": 22,
			"bO": 9,
			"pA": 3,
			"r": 1,
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
			"gameId": 18,
			"teamLeaguePlayerId": 23,
			"bO": 10,
			"pA": 3,
			"r": 3,
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
			"gameId": 18,
			"teamLeaguePlayerId": 24,
			"bO": 11,
			"pA": 3,
			"r": 3,
			"rBI": 4,
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
			"gameId": 18,
			"teamLeaguePlayerId": 25,
			"bO": 12,
			"pA": 3,
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
	    "date": "2021-07-02 18:30:00" ,
	    "opponent": "Los Ohmbres",
	    "score": 28,
	    "opponentScore": 9,
	    "field": "Vietnam Vets #2",
	    "wasHome": 0,
	    "teamLeagueId": 5
	}
		{
			"gameId": 19,
			"teamLeaguePlayerId": 26,
			"bO": 1,
			"pA": 5,
			"r": 3,
			"rBI": 3,
			"b1": 3,
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
			"gameId": 19,
			"teamLeaguePlayerId": 34,
			"bO": 2,
			"pA": 5,
			"r": 3,
			"rBI": 4,
			"b1": 2,
			"b2": 0,
			"b3": 1,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 19,
			"teamLeaguePlayerId": 16,
			"bO": 3,
			"pA": 5,
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
			"gameId": 19,
			"teamLeaguePlayerId": 17,
			"bO": 4,
			"pA": 4,
			"r": 2,
			"rBI": 4,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 19,
			"teamLeaguePlayerId": 19,
			"bO": 5,
			"pA": 4,
			"r": 2,
			"rBI": 1,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 19,
			"teamLeaguePlayerId": 20,
			"bO": 6,
			"pA": 4,
			"r": 2,
			"rBI": 1,
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
			"gameId": 19,
			"teamLeaguePlayerId": 21,
			"bO": 7,
			"pA": 4,
			"r": 3,
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
			"gameId": 19,
			"teamLeaguePlayerId": 22,
			"bO": 8,
			"pA": 4,
			"r": 1,
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
			"gameId": 19,
			"teamLeaguePlayerId": 23,
			"bO": 9,
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
			"gameId": 19,
			"teamLeaguePlayerId": 27,
			"bO": 10,
			"pA": 4,
			"r": 4,
			"rBI": 0,
			"b1": 2,
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
			"gameId": 19,
			"teamLeaguePlayerId": 24,
			"bO": 11,
			"pA": 4,
			"r": 3,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 19,
			"teamLeaguePlayerId": 25,
			"bO": 12,
			"pA": 4,
			"r": 3,
			"rBI": 5,
			"b1": 1,
			"b2": 2,
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
	    "date": "2021-07-16 18:30:00" ,
	    "opponent": "Jager Bombers",
	    "score": 33,
	    "opponentScore": 8,
	    "field": "Vietnam Vets #1",
	    "wasHome": 1,
	    "teamLeagueId": 5
    }
		{
			"gameId": 20,
			"teamLeaguePlayerId": 15,
			"bO": 1,
			"pA": 6,
			"r": 5,
			"rBI": 4,
			"b1": 3,
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
			"gameId": 20,
			"teamLeaguePlayerId": 34,
			"bO": 2,
			"pA": 5,
			"r": 3,
			"rBI": 3,
			"b1": 3,
			"b2": 0,
			"b3": 1,
			"hR": 0,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 20,
			"teamLeaguePlayerId": 16,
			"bO": 3,
			"pA": 5,
			"r": 2,
			"rBI": 8,
			"b1": 3,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 20,
			"teamLeaguePlayerId": 17,
			"bO": 4,
			"pA": 5,
			"r": 3,
			"rBI": 6,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 2,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 20,
			"teamLeaguePlayerId": 18,
			"bO": 5,
			"pA": 5,
			"r": 3,
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
			"gameId": 20,
			"teamLeaguePlayerId": 27,
			"bO": 6,
			"pA": 5,
			"r": 3,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 20,
			"teamLeaguePlayerId": 28,
			"bO": 7,
			"pA": 5,
			"r": 4,
			"rBI": 5,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 20,
			"teamLeaguePlayerId": 24,
			"bO": 8,
			"pA": 5,
			"r": 4,
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
			"gameId": 20,
			"teamLeaguePlayerId": 25,
			"bO": 9,
			"pA": 5,
			"r": 3,
			"rBI": 3,
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
			"gameId": 20,
			"teamLeaguePlayerId": 29,
			"bO": 10,
			"pA": 5,
			"r": 3,
			"rBI": 2,
			"b1": 4,
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
	    "date": "2021-08-06 18:30:00" ,
	    "opponent": "Beerito Slammers",
	    "score": 15,
	    "opponentScore": 13,
	    "field": "Vietnam Vets #2",
	    "wasHome": 1,
	    "teamLeagueId": 5
	}
		{
			"gameId": 21,
			"teamLeaguePlayerId": 15,
			"bO": 1,
			"pA": 5,
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
			"gameId": 21,
			"teamLeaguePlayerId": 34,
			"bO": 2,
			"pA": 5,
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
			"gameId": 21,
			"teamLeaguePlayerId": 16,
			"bO": 3,
			"pA": 4,
			"r": 0,
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
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 21,
			"teamLeaguePlayerId": 30,
			"bO": 4,
			"pA": 4,
			"r": 2,
			"rBI": 1,
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
			"gameId": 21,
			"teamLeaguePlayerId": 18,
			"bO": 5,
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
			"gameId": 21,
			"teamLeaguePlayerId": 26,
			"bO": 6,
			"pA": 4,
			"r": 3,
			"rBI": 2,
			"b1": 3,
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
			"gameId": 21,
			"teamLeaguePlayerId": 21,
			"bO": 7,
			"pA": 4,
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
			"gameId": 21,
			"teamLeaguePlayerId": 19,
			"bO": 8,
			"pA": 4,
			"r": 1,
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
			"gameId": 21,
			"teamLeaguePlayerId": 31,
			"bO": 9,
			"pA": 4,
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
			"gameId": 21,
			"teamLeaguePlayerId": 24,
			"bO": 1,
			"pA": 4,
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
	    "date": "2021-08-13 18:30:00" ,
	    "opponent": "Red Tails",
	    "score": 21,
	    "opponentScore": 8,
	    "field": "Vietnam Vets #1",
	    "wasHome": 0,
	    "teamLeagueId": 5
	}
		{
			"gameId": 22,
			"teamLeaguePlayerId": 15,
			"bO": 1,
			"pA": 5,
			"r": 4,
			"rBI": 1,
			"b1": 4,
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
			"gameId": 22,
			"teamLeaguePlayerId": 34,
			"bO": 2,
			"pA": 5,
			"r": 2,
			"rBI": 4,
			"b1": 3,
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
			"gameId": 22,
			"teamLeaguePlayerId": 16,
			"bO": 3,
			"pA": 5,
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
			"gameId": 22,
			"teamLeaguePlayerId": 17,
			"bO": 4,
			"pA": 5,
			"r": 3,
			"rBI": 2,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 22,
			"teamLeaguePlayerId": 18,
			"bO": 5,
			"pA": 4,
			"r": 3,
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
			"gameId": 22,
			"teamLeaguePlayerId": 26,
			"bO": 6,
			"pA": 4,
			"r": 1,
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
			"gameId": 22,
			"teamLeaguePlayerId": 20,
			"bO": 7,
			"pA": 4,
			"r": 3,
			"rBI": 7,
			"b1": 1,
			"b2": 3,
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
			"gameId": 22,
			"teamLeaguePlayerId": 27,
			"bO": 8,
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
			"gameId": 22,
			"teamLeaguePlayerId": 30,
			"bO": 9,
			"pA": 4,
			"r": 2,
			"rBI": 2,
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
			"gameId": 22,
			"teamLeaguePlayerId": 25,
			"bO": 10,
			"pA": 4,
			"r": 3,
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
	    "date": "2021-08-20 18:30:00" ,
	    "opponent": "Los Ohmbres",
	    "score": 9,
	    "opponentScore": 7,
	    "field": "Tingley #2",
	    "wasHome": 0,
	    "teamLeagueId": 5
	}
	{
	    "date": "2021-08-27 19:30:00" ,
	    "opponent": "Breaking Bats",
	    "score": 17,
	    "opponentScore": 8,
	    "field": "Vietnam Vets #1",
	    "wasHome": 0,
	    "teamLeagueId": 5
	}
		{
			"gameId": 24,
			"teamLeaguePlayerId": 34,
			"bO": 1,
			"pA": 5,
			"r": 2,
			"rBI": 0,
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
			"gameId": 24,
			"teamLeaguePlayerId": 25,
			"bO": 2,
			"pA": 4,
			"r": 2,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 24,
			"teamLeaguePlayerId": 24,
			"bO": 3,
			"pA": 4,
			"r": 2,
			"rBI": 4,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 24,
			"teamLeaguePlayerId": 17,
			"bO": 4,
			"pA": 4,
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
			"gameId": 24,
			"teamLeaguePlayerId": 18,
			"bO": 5,
			"pA": 4,
			"r": 2,
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
			"gameId": 24,
			"teamLeaguePlayerId": 21,
			"bO": 6,
			"pA": 4,
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
			"gameId": 24,
			"teamLeaguePlayerId": 20,
			"bO": 7,
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
			"gameId": 24,
			"teamLeaguePlayerId": 27,
			"bO": 8,
			"pA": 4,
			"r": 0,
			"rBI": 1,
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
			"gameId": 24,
			"teamLeaguePlayerId": 22,
			"bO": 9,
			"pA": 4,
			"r": 1,
			"rBI": 0,
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
			"gameId": 24,
			"teamLeaguePlayerId": 23,
			"bO": 10,
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
			"gameId": 24,
			"teamLeaguePlayerId": 32,
			"bO": 11,
			"pA": 4,
			"r": 2,
			"rBI": 3,
			"b1": 3,
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
	    "date": "2021-09-03 18:30:00" ,
	    "opponent": "Jager Bombers",
	    "score": 25,
	    "opponentScore": 1,
	    "field": "Vietnam Vets #1",
	    "wasHome": 1,
	    "teamLeagueId": 5
	}
		{
			"gameId": 25,
			"teamLeaguePlayerId": 26,
			"bO": 1,
			"pA": 5,
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
			"gameId": 25,
			"teamLeaguePlayerId": 34,
			"bO": 2,
			"pA": 5,
			"r": 3,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 25,
			"teamLeaguePlayerId": 16,
			"bO": 3,
			"pA": 5,
			"r": 3,
			"rBI": 0,
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
			"gameId": 25,
			"teamLeaguePlayerId": 17,
			"bO": 4,
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
			"gameId": 25,
			"teamLeaguePlayerId": 20,
			"bO": 5,
			"pA": 4,
			"r": 3,
			"rBI": 3,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 25,
			"teamLeaguePlayerId": 27,
			"bO": 6,
			"pA": 4,
			"r": 2,
			"rBI": 3,
			"b1": 3,
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
			"gameId": 25,
			"teamLeaguePlayerId": 22,
			"bO": 7,
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
			"gameId": 25,
			"teamLeaguePlayerId": 30,
			"bO": 8,
			"pA": 4,
			"r": 2,
			"rBI": 4,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 25,
			"teamLeaguePlayerId": 23,
			"bO": 9,
			"pA": 4,
			"r": 2,
			"rBI": 0,
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
			"gameId": 25,
			"teamLeaguePlayerId": 25,
			"bO": 10,
			"pA": 4,
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
			"gameId": 25,
			"teamLeaguePlayerId": 24,
			"bO": 11,
			"pA": 4,
			"r": 2,
			"rBI": 5,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
	{
	    "date": "2021-09-10 18:30:00" ,
	    "opponent": "Redemption DSF",
	    "score": 19,
	    "opponentScore": 16,
	    "field": "Tingley #2",
	    "wasHome": 0,
	    "teamLeagueId": 5
	}
		{
			"gameId": 29,
			"teamLeaguePlayerId": 26,
			"bO": 1,
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
			"gameId": 29,
			"teamLeaguePlayerId": 34,
			"bO": 2,
			"pA": 4,
			"r": 2,
			"rBI": 1,
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
			"gameId": 29,
			"teamLeaguePlayerId": 16,
			"bO": 3,
			"pA": 4,
			"r": 3,
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
			"gameId": 29,
			"teamLeaguePlayerId": 17,
			"bO": 4,
			"pA": 4,
			"r": 2,
			"rBI": 5,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 29,
			"teamLeaguePlayerId": 18,
			"bO": 5,
			"pA": 4,
			"r": 1,
			"rBI": 0,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 29,
			"teamLeaguePlayerId": 21,
			"bO": 6,
			"pA": 4,
			"r": 1,
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
			"gameId": 29,
			"teamLeaguePlayerId": 20,
			"bO": 7,
			"pA": 4,
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
			"gameId": 29,
			"teamLeaguePlayerId": 27,
			"bO": 8,
			"pA": 4,
			"r": 1,
			"rBI": 1,
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
			"gameId": 29,
			"teamLeaguePlayerId": 22,
			"bO": 9,
			"pA": 3,
			"r": 2,
			"rBI": 4,
			"b1": 0,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 29,
			"teamLeaguePlayerId": 23,
			"bO": 10,
			"pA": 3,
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
			"gameId": 29,
			"teamLeaguePlayerId": 25,
			"bO": 11,
			"pA": 3,
			"r": 2,
			"rBI": 2,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 29,
			"teamLeaguePlayerId": 24,
			"bO": 12,
			"pA": 3,
			"r": 1,
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
	    "date": "2021-09-10 20:30:00" ,
	    "opponent": "Redemption DSF",
	    "score": 17,
	    "opponentScore": 14,
	    "field": "Tingley #2",
	    "wasHome": 1,
	    "teamLeagueId": 5
	}
		{
			"gameId": 26,
			"teamLeaguePlayerId": 26,
			"bO": 1,
			"pA": 4,
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
			"gameId": 26,
			"teamLeaguePlayerId": 34,
			"bO": 2,
			"pA": 4,
			"r": 2,
			"rBI": 0,
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
			"gameId": 26,
			"teamLeaguePlayerId": 16,
			"bO": 3,
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
			"gameId": 26,
			"teamLeaguePlayerId": 17,
			"bO": 4,
			"pA": 4,
			"r": 3,
			"rBI": 4,
			"b1": 2,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 26,
			"teamLeaguePlayerId": 18,
			"bO": 5,
			"pA": 4,
			"r": 2,
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
			"gameId": 26,
			"teamLeaguePlayerId": 21,
			"bO": 6,
			"pA": 4,
			"r": 3,
			"rBI": 1,
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
			"gameId": 26,
			"teamLeaguePlayerId": 20,
			"bO": 7,
			"pA": 4,
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
			"gameId": 26,
			"teamLeaguePlayerId": 27,
			"bO": 8,
			"pA": 4,
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
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 26,
			"teamLeaguePlayerId": 22,
			"bO": 9,
			"pA": 3,
			"r": 0,
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
			"gameId": 26,
			"teamLeaguePlayerId": 23,
			"bO": 10,
			"pA": 3,
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
			"gameId": 26,
			"teamLeaguePlayerId": 25,
			"bO": 11,
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
			"gameId": 26,
			"teamLeaguePlayerId": 24,
			"bO": 12,
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
	    "date": "2021-09-17 19:30:00" ,
	    "opponent": "Where My Pitches At?",
	    "score": 24,
	    "opponentScore": 6,
	    "field": "Vietnam Vets #2",
	    "wasHome": 0,
	    "teamLeagueId": 5
	}
		{
			"gameId": 27,
			"teamLeaguePlayerId": 15,
			"bO": 1,
			"pA": 4,
			"r": 2,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 27,
			"teamLeaguePlayerId": 34,
			"bO": 2,
			"pA": 4,
			"r": 2,
			"rBI": 1,
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
			"gameId": 27,
			"teamLeaguePlayerId": 16,
			"bO": 3,
			"pA": 4,
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
			"gameId": 27,
			"teamLeaguePlayerId": 17,
			"bO": 4,
			"pA": 4,
			"r": 3,
			"rBI": 7,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 2,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 27,
			"teamLeaguePlayerId": 18,
			"bO": 5,
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
			"gameId": 27,
			"teamLeaguePlayerId": 26,
			"bO": 6,
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
			"gameId": 27,
			"teamLeaguePlayerId": 21,
			"bO": 7,
			"pA": 3,
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
			"gameId": 27,
			"teamLeaguePlayerId": 23,
			"bO": 8,
			"pA": 3,
			"r": 3,
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
			"gameId": 27,
			"teamLeaguePlayerId": 27,
			"bO": 9,
			"pA": 3,
			"r": 2,
			"rBI": 3,
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
			"gameId": 27,
			"teamLeaguePlayerId": 32,
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
			"gameId": 27,
			"teamLeaguePlayerId": 25,
			"bO": 11,
			"pA": 3,
			"r": 2,
			"rBI": 5,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 27,
			"teamLeaguePlayerId": 24,
			"bO": 12,
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
	    "date": "2021-09-17 20:30:00" ,
	    "opponent": "Breaking Bats",
	    "score": 19,
	    "opponentScore": 7,
	    "field": "Vietnam Vets #2",
	    "wasHome": 1,
	    "teamLeagueId": 5
	}
		{
			"gameId": 28,
			"teamLeaguePlayerId": 15,
			"bO": 1,
			"pA": 4,
			"r": 1,
			"rBI": 3,
			"b1": 0,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 28,
			"teamLeaguePlayerId": 34,
			"bO": 2,
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
			"gameId": 28,
			"teamLeaguePlayerId": 16,
			"bO": 3,
			"pA": 3,
			"r": 1,
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
			"gameId": 28,
			"teamLeaguePlayerId": 17,
			"bO": 4,
			"pA": 3,
			"r": 3,
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
			"gameId": 28,
			"teamLeaguePlayerId": 18,
			"bO": 5,
			"pA": 3,
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
			"gameId": 28,
			"teamLeaguePlayerId": 26,
			"bO": 6,
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
			"gameId": 28,
			"teamLeaguePlayerId": 21,
			"bO": 7,
			"pA": 3,
			"r": 1,
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
			"gameId": 28,
			"teamLeaguePlayerId": 23,
			"bO": 8,
			"pA": 3,
			"r": 1,
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
			"gameId": 28,
			"teamLeaguePlayerId": 27,
			"bO": 9,
			"pA": 3,
			"r": 2,
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
			"gameId": 28,
			"teamLeaguePlayerId": 32,
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
			"gameId": 28,
			"teamLeaguePlayerId": 25,
			"bO": 11,
			"pA": 3,
			"r": 2,
			"rBI": 5,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 28,
			"teamLeaguePlayerId": 24,
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
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
	{
	    "date": "2021-09-24 18:30:00" ,
	    "opponent": "Beerito Slammers",
	    "score": 18,
	    "opponentScore": 13,
	    "field": "Vietnam Vets #2",
	    "wasHome": 0,
	    "teamLeagueId": 5
	}
		{
			"gameId": 30,
			"teamLeaguePlayerId": 26,
			"bO": 1,
			"pA": 4,
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
			"gameId": 30,
			"teamLeaguePlayerId": 34,
			"bO": 2,
			"pA": 4,
			"r": 1,
			"rBI": 2,
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
			"gameId": 30,
			"teamLeaguePlayerId": 16,
			"bO": 3,
			"pA": 4,
			"r": 1,
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
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 30,
			"teamLeaguePlayerId": 17,
			"bO": 4,
			"pA": 4,
			"r": 2,
			"rBI": 1,
			"b1": 0,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 30,
			"teamLeaguePlayerId": 18,
			"bO": 5,
			"pA": 4,
			"r": 0,
			"rBI": 2,
			"b1": 0,
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
			"gameId": 30,
			"teamLeaguePlayerId": 21,
			"bO": 6,
			"pA": 4,
			"r": 1,
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
			"gameId": 30,
			"teamLeaguePlayerId": 20,
			"bO": 7,
			"pA": 4,
			"r": 2,
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
			"gameId": 30,
			"teamLeaguePlayerId": 30,
			"bO": 8,
			"pA": 4,
			"r": 3,
			"rBI": 2,
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
			"gameId": 30,
			"teamLeaguePlayerId": 22,
			"bO": 9,
			"pA": 4,
			"r": 1,
			"rBI": 1,
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
			"gameId": 30,
			"teamLeaguePlayerId": 23,
			"bO": 10,
			"pA": 3,
			"r": 1,
			"rBI": 1,
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
			"gameId": 30,
			"teamLeaguePlayerId": 33,
			"bO": 11,
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
			"gameId": 30,
			"teamLeaguePlayerId": 25,
			"bO": 12,
			"pA": 3,
			"r": 1,
			"rBI": 3,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 30,
			"teamLeaguePlayerId": 24,
			"bO": 13,
			"pA": 3,
			"r": 2,
			"rBI": 1,
			"b1": 0,
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
	    "date": "2021-10-08 18:30:00" ,
	    "opponent": "Red Tails",
	    "score": 27,
	    "opponentScore": 10,
	    "field": "Vietnam Vets #1",
	    "wasHome": 1,
	    "teamLeagueId": 5
	}
		{
			"gameId": 31,
			"teamLeaguePlayerId": 15,
			"bO": 1,
			"pA": 4,
			"r": 3,
			"rBI": 0,
			"b1": 3,
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
			"gameId": 31,
			"teamLeaguePlayerId": 34,
			"bO": 2,
			"pA": 4,
			"r": 3,
			"rBI": 5,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 31,
			"teamLeaguePlayerId": 16,
			"bO": 3,
			"pA": 4,
			"r": 2,
			"rBI": 3,
			"b1": 3,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 31,
			"teamLeaguePlayerId": 17,
			"bO": 4,
			"pA": 4,
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
			"gameId": 31,
			"teamLeaguePlayerId": 18,
			"bO": 5,
			"pA": 4,
			"r": 2,
			"rBI": 3,
			"b1": 2,
			"b2": 1,
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
			"gameId": 31,
			"teamLeaguePlayerId": 21,
			"bO": 6,
			"pA": 4,
			"r": 2,
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
			"gameId": 31,
			"teamLeaguePlayerId": 20,
			"bO": 7,
			"pA": 3,
			"r": 3,
			"rBI": 3,
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
			"gameId": 31,
			"teamLeaguePlayerId": 22,
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
			"gameId": 31,
			"teamLeaguePlayerId": 23,
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
			"gameId": 31,
			"teamLeaguePlayerId": 27,
			"bO": 10,
			"pA": 3,
			"r": 2,
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
			"gameId": 31,
			"teamLeaguePlayerId": 25,
			"bO": 11,
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
			"gameId": 31,
			"teamLeaguePlayerId": 24,
			"bO": 12,
			"pA": 3,
			"r": 2,
			"rBI": 1,
			"b1": 1,
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
			"gameId": 31,
			"teamLeaguePlayerId": 35,
			"bO": 13,
			"pA": 3,
			"r": 3,
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
	    "date": "2021-10-08 20:30:00" ,
	    "opponent": "Where My Pitches At?",
	    "score": 18,
	    "opponentScore": 8,
	    "field": "Vietnam Vets #2",
	    "wasHome": 1,
	    "teamLeagueId": 5
	}
		{
			"gameId": 32,
			"teamLeaguePlayerId": 15,
			"bO": 1,
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
			"gameId": 32,
			"teamLeaguePlayerId": 34,
			"bO": 2,
			"pA": 3,
			"r": 1,
			"rBI": 1,
			"b1": 1,
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
			"gameId": 32,
			"teamLeaguePlayerId": 16,
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
			"gameId": 32,
			"teamLeaguePlayerId": 17,
			"bO": 4,
			"pA": 3,
			"r": 2,
			"rBI": 2,
			"b1": 0,
			"b2": 0,
			"b3": 1,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 32,
			"teamLeaguePlayerId": 18,
			"bO": 5,
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
			"gameId": 32,
			"teamLeaguePlayerId": 21,
			"bO": 6,
			"pA": 3,
			"r": 2,
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
			"gameId": 32,
			"teamLeaguePlayerId": 20,
			"bO": 7,
			"pA": 3,
			"r": 3,
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
			"gameId": 32,
			"teamLeaguePlayerId": 22,
			"bO": 8,
			"pA": 3,
			"r": 1,
			"rBI": 4,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 32,
			"teamLeaguePlayerId": 23,
			"bO": 9,
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
			"gameId": 32,
			"teamLeaguePlayerId": 27,
			"bO": 10,
			"pA": 2,
			"r": 2,
			"rBI": 1,
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
			"gameId": 32,
			"teamLeaguePlayerId": 25,
			"bO": 11,
			"pA": 2,
			"r": 2,
			"rBI": 2,
			"b1": 0,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 32,
			"teamLeaguePlayerId": 24,
			"bO": 12,
			"pA": 2,
			"r": 2,
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
			"gameId": 32,
			"teamLeaguePlayerId": 35,
			"bO": 13,
			"pA": 2,
			"r": 1,
			"rBI": 2,
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

-- Sb-Ref.com Spring 2022
	{
	    "date": "2022-03-15 18:30:00" ,
	    "opponent": "DC Hooligans",
	    "score": 12,
	    "opponentScore": 29,
	    "field": "Vietnam Vets #1",
	    "wasHome": 0,
	    "teamLeagueId": 13
	}
		{
			"gameId": 33,
			"teamLeaguePlayerId": 37,
			"bO": 1,
			"pA": 4,
			"r": 3,
			"rBI": 0,
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
			"gameId": 33,
			"teamLeaguePlayerId": 43,
			"bO": 2,
			"pA": 4,
			"r": 2,
			"rBI": 0,
			"b1": 0,
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
			"gameId": 33,
			"teamLeaguePlayerId": 38,
			"bO": 3,
			"pA": 3,
			"r": 2,
			"rBI": 3,
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
			"gameId": 33,
			"teamLeaguePlayerId": 39,
			"bO": 4,
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
			"gameId": 33,
			"teamLeaguePlayerId": 48,
			"bO": 5,
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
			"gameId": 33,
			"teamLeaguePlayerId": 45,
			"bO": 6,
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
			"gameId": 33,
			"teamLeaguePlayerId": 42,
			"bO": 7,
			"pA": 3,
			"r": 2,
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
			"gameId": 33,
			"teamLeaguePlayerId": 40,
			"bO": 8,
			"pA": 3,
			"r": 0,
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
			"gameId": 33,
			"teamLeaguePlayerId": 46,
			"bO": 9,
			"pA": 3,
			"r": 0,
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
			"gameId": 33,
			"teamLeaguePlayerId": 44,
			"bO": 10,
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
			"gameId": 33,
			"teamLeaguePlayerId": 41,
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
	    "date": "2022-03-15 19:30:00" ,
	    "opponent": "Old and Slow",
	    "score": 22,
	    "opponentScore": 21,
	    "field": "Vietnam Vets #2",
	    "wasHome": 1,
	    "teamLeagueId": 13
	}
		{
			"gameId": 34,
			"teamLeaguePlayerId": 37,
			"bO": 1,
			"pA": 5,
			"r": 3,
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
			"gameId": 34,
			"teamLeaguePlayerId": 43,
			"bO": 2,
			"pA": 5,
			"r": 5,
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
			"gameId": 34,
			"teamLeaguePlayerId": 38,
			"bO": 3,
			"pA": 5,
			"r": 3,
			"rBI": 1,
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
			"gameId": 34,
			"teamLeaguePlayerId": 39,
			"bO": 4,
			"pA": 5,
			"r": 3,
			"rBI": 8,
			"b1": 3,
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
			"gameId": 34,
			"teamLeaguePlayerId": 48,
			"bO": 5,
			"pA": 4,
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
			"gameId": 34,
			"teamLeaguePlayerId": 45,
			"bO": 6,
			"pA": 4,
			"r": 1,
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
			"gameId": 34,
			"teamLeaguePlayerId": 42,
			"bO": 7,
			"pA": 4,
			"r": 2,
			"rBI": 3,
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
			"gameId": 34,
			"teamLeaguePlayerId": 40,
			"bO": 8,
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
			"gameId": 34,
			"teamLeaguePlayerId": 46,
			"bO": 9,
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
			"gameId": 34,
			"teamLeaguePlayerId": 44,
			"bO": 10,
			"pA": 4,
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
			"gameId": 34,
			"teamLeaguePlayerId": 41,
			"bO": 11,
			"pA": 4,
			"r": 1,
			"rBI": 2,
			"b1": 1,
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
	    "date": "2022-03-29 18:30:00" ,
	    "opponent": "HCII",
	    "score": 13,
	    "opponentScore": 15,
	    "field": "Barelas #2",
	    "wasHome": 0,
	    "teamLeagueId": 13
	}
		{
			"gameId": 43,
			"teamLeaguePlayerId": 37,
			"bO": 1,
			"pA": 3,
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
			"gameId": 43,
			"teamLeaguePlayerId": 47,
			"bO": 2,
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
			"gameId": 43,
			"teamLeaguePlayerId": 38,
			"bO": 3,
			"pA": 3,
			"r": 2,
			"rBI": 0,
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
			"gameId": 43,
			"teamLeaguePlayerId": 39,
			"bO": 4,
			"pA": 3,
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
			"gameId": 43,
			"teamLeaguePlayerId": 43,
			"bO": 5,
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
			"gameId": 43,
			"teamLeaguePlayerId": 48,
			"bO": 6,
			"pA": 3,
			"r": 1,
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
			"gameId": 43,
			"teamLeaguePlayerId": 44,
			"bO": 7,
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
			"gameId": 43,
			"teamLeaguePlayerId": 42,
			"bO": 8,
			"pA": 3,
			"r": 1,
			"rBI": 1,
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
			"gameId": 43,
			"teamLeaguePlayerId": 40,
			"bO": 9,
			"pA": 3,
			"r": 2,
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
			"gameId": 43,
			"teamLeaguePlayerId": 46,
			"bO": 10,
			"pA": 2,
			"r": 0,
			"rBI": 4,
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
			"gameId": 43,
			"teamLeaguePlayerId": 45,
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
			"gameId": 43,
			"teamLeaguePlayerId": 41,
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
	    "date": "2022-03-29 20:30:00" ,
	    "opponent": "ABQ Guns",
	    "score": 4,
	    "opponentScore": 24,
	    "field": "Barelas #3",
	    "wasHome": 0,
	    "teamLeagueId": 13
	}
		{
			"gameId": 44,
			"teamLeaguePlayerId": 37,
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
			"gameId": 44,
			"teamLeaguePlayerId": 47,
			"bO": 2,
			"pA": 3,
			"r": 0,
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
			"gameId": 44,
			"teamLeaguePlayerId": 38,
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
			"gameId": 44,
			"teamLeaguePlayerId": 39,
			"bO": 4,
			"pA": 2,
			"r": 0,
			"rBI": 0,
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
			"gameId": 44,
			"teamLeaguePlayerId": 43,
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
			"gameId": 44,
			"teamLeaguePlayerId": 48,
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
			"gameId": 44,
			"teamLeaguePlayerId": 44,
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
			"gameId": 44,
			"teamLeaguePlayerId": 42,
			"bO": 8,
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
			"gameId": 44,
			"teamLeaguePlayerId": 40,
			"bO": 9,
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
			"gameId": 44,
			"teamLeaguePlayerId": 46,
			"bO": 10,
			"pA": 2,
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
			"gameId": 44,
			"teamLeaguePlayerId": 45,
			"bO": 11,
			"pA": 2,
			"r": 1,
			"rBI": 3,
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
			"gameId": 44,
			"teamLeaguePlayerId": 41,
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
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
	{
	    "date": "2022-04-05 18:30:00" ,
	    "opponent": "Lizards",
	    "score": 10,
	    "opponentScore": 15,
	    "field": "Barelas #3",
	    "wasHome": 1,
	    "teamLeagueId": 13
	}
		{
			"gameId": 45,
			"teamLeaguePlayerId": 37,
			"bO": 1,
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
			"gameId": 45,
			"teamLeaguePlayerId": 43,
			"bO": 2,
			"pA": 4,
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
			"gameId": 45,
			"teamLeaguePlayerId": 38,
			"bO": 3,
			"pA": 4,
			"r": 2,
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
			"gameId": 45,
			"teamLeaguePlayerId": 39,
			"bO": 4,
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
			"gameId": 45,
			"teamLeaguePlayerId": 48,
			"bO": 5,
			"pA": 4,
			"r": 1,
			"rBI": 0,
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
			"gameId": 45,
			"teamLeaguePlayerId": 40,
			"bO": 6,
			"pA": 4,
			"r": 0,
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
			"gameId": 45,
			"teamLeaguePlayerId": 42,
			"bO": 7,
			"pA": 4,
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
			"gameId": 45,
			"teamLeaguePlayerId": 46,
			"bO": 8,
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
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 45,
			"teamLeaguePlayerId": 45,
			"bO": 9,
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
			"gameId": 45,
			"teamLeaguePlayerId": 41,
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
			"fO": 0,
			"gIDP": 1,
			"lOB": 0
		}
	{
	    "date": "2022-04-05 19:30:00" ,
	    "opponent": "Bad News Beers",
	    "score": 5,
	    "opponentScore": 32,
	    "field": "Barelas #1",
	    "wasHome": 1,
	    "teamLeagueId": 13
	}
		{
			"gameId": 46,
			"teamLeaguePlayerId": 37,
			"bO": 1,
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
			"gameId": 46,
			"teamLeaguePlayerId": 43,
			"bO": 2,
			"pA": 3,
			"r": 2,
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
			"gameId": 46,
			"teamLeaguePlayerId": 38,
			"bO": 3,
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
			"gameId": 46,
			"teamLeaguePlayerId": 39,
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
			"gameId": 46,
			"teamLeaguePlayerId": 48,
			"bO": 5,
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
			"gameId": 46,
			"teamLeaguePlayerId": 40,
			"bO": 6,
			"pA": 3,
			"r": 1,
			"rBI": 3,
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
			"gameId": 46,
			"teamLeaguePlayerId": 42,
			"bO": 7,
			"pA": 3,
			"r": 0,
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
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 46,
			"teamLeaguePlayerId": 46,
			"bO": 8,
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
			"gameId": 46,
			"teamLeaguePlayerId": 45,
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
			"gameId": 46,
			"teamLeaguePlayerId": 41,
			"bO": 10,
			"pA": 2,
			"r": 0,
			"rBI": 1,
			"b1": 0,
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
	    "date": "2022-04-12 18:30:00" ,
	    "opponent": "Stormrage",
	    "score": 18,
	    "opponentScore": 7,
	    "field": "Bullhead #3",
	    "wasHome": 1,
	    "teamLeagueId": 13
	}
		{
			"gameId": 47,
			"teamLeaguePlayerId": 37,
			"bO": 1,
			"pA": 4,
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
			"gameId": 47,
			"teamLeaguePlayerId": 43,
			"bO": 2,
			"pA": 4,
			"r": 1,
			"rBI": 4,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 47,
			"teamLeaguePlayerId": 38,
			"bO": 3,
			"pA": 3,
			"r": 2,
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
			"gameId": 47,
			"teamLeaguePlayerId": 39,
			"bO": 4,
			"pA": 3,
			"r": 3,
			"rBI": 1,
			"b1": 1,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 47,
			"teamLeaguePlayerId": 48,
			"bO": 5,
			"pA": 3,
			"r": 3,
			"rBI": 2,
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
			"gameId": 47,
			"teamLeaguePlayerId": 36,
			"bO": 6,
			"pA": 3,
			"r": 1,
			"rBI": 2,
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
			"gameId": 47,
			"teamLeaguePlayerId": 40,
			"bO": 7,
			"pA": 3,
			"r": 1,
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
			"gameId": 47,
			"teamLeaguePlayerId": 42,
			"bO": 8,
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
			"gameId": 47,
			"teamLeaguePlayerId": 44,
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
			"gameId": 47,
			"teamLeaguePlayerId": 46,
			"bO": 10,
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
			"gameId": 47,
			"teamLeaguePlayerId": 41,
			"bO": 11,
			"pA": 3,
			"r": 1,
			"rBI": 1,
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
	    "date": "2022-04-12 20:30:00" ,
	    "opponent": "505 Renegades",
	    "score": 38,
	    "opponentScore": 7,
	    "field": "Bullhead #3",
	    "wasHome": 0,
	    "teamLeagueId": 13
	}
		{
			"gameId": 48,
			"teamLeaguePlayerId": 37,
			"bO": 1,
			"pA": 7,
			"r": 4,
			"rBI": 0,
			"b1": 3,
			"b2": 1,
			"b3": 0,
			"hR": 0,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 48,
			"teamLeaguePlayerId": 43,
			"bO": 2,
			"pA": 6,
			"r": 4,
			"rBI": 9,
			"b1": 2,
			"b2": 1,
			"b3": 0,
			"hR": 2,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 48,
			"teamLeaguePlayerId": 38,
			"bO": 3,
			"pA": 6,
			"r": 4,
			"rBI": 1,
			"b1": 5,
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
			"gameId": 48,
			"teamLeaguePlayerId": 39,
			"bO": 4,
			"pA": 6,
			"r": 4,
			"rBI": 3,
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
			"gameId": 48,
			"teamLeaguePlayerId": 48,
			"bO": 5,
			"pA": 6,
			"r": 5,
			"rBI": 2,
			"b1": 2,
			"b2": 1,
			"b3": 0,
			"hR": 0,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 48,
			"teamLeaguePlayerId": 36,
			"bO": 6,
			"pA": 6,
			"r": 6,
			"rBI": 5,
			"b1": 2,
			"b2": 3,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 48,
			"teamLeaguePlayerId": 40,
			"bO": 7,
			"pA": 6,
			"r": 4,
			"rBI": 3,
			"b1": 3,
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
			"gameId": 48,
			"teamLeaguePlayerId": 44,
			"bO": 8,
			"pA": 6,
			"r": 4,
			"rBI": 2,
			"b1": 2,
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
			"gameId": 48,
			"teamLeaguePlayerId": 46,
			"bO": 9,
			"pA": 6,
			"r": 1,
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
			"gameId": 48,
			"teamLeaguePlayerId": 41,
			"bO": 10,
			"pA": 6,
			"r": 1,
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

-- Chups Spring 2022
	{
	    "date": "2022-03-18 18:30:00" ,
	    "opponent": "Free Agents",
	    "score": 21,
	    "opponentScore": 1,
	    "field": "Vietnam Vets #2",
	    "wasHome": 0,
	    "teamLeagueId": 12
	}
		{
			"gameId": 35,
			"teamLeaguePlayerId": 49,
			"bO": 1,
			"pA": 5,
			"r": 3,
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
			"gameId": 35,
			"teamLeaguePlayerId": 61,
			"bO": 2,
			"pA": 5,
			"r": 2,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 35,
			"teamLeaguePlayerId": 50,
			"bO": 3,
			"pA": 5,
			"r": 2,
			"rBI": 3,
			"b1": 3,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 35,
			"teamLeaguePlayerId": 51,
			"bO": 4,
			"pA": 5,
			"r": 3,
			"rBI": 4,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 35,
			"teamLeaguePlayerId": 60,
			"bO": 5,
			"pA": 5,
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
			"gameId": 35,
			"teamLeaguePlayerId": 56,
			"bO": 6,
			"pA": 5,
			"r": 3,
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
			"gameId": 35,
			"teamLeaguePlayerId": 53,
			"bO": 7,
			"pA": 5,
			"r": 2,
			"rBI": 3,
			"b1": 3,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 35,
			"teamLeaguePlayerId": 54,
			"bO": 8,
			"pA": 5,
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
		{
			"gameId": 35,
			"teamLeaguePlayerId": 57,
			"bO": 9,
			"pA": 4,
			"r": 3,
			"rBI": 0,
			"b1": 0,
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
			"gameId": 35,
			"teamLeaguePlayerId": 59,
			"bO": 10,
			"pA": 4,
			"r": 2,
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
			"gameId": 35,
			"teamLeaguePlayerId": 58,
			"bO": 11,
			"pA": 4,
			"r": 3,
			"rBI": 5,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 2,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
	{
	    "date": "2022-03-18 19:30:00" ,
	    "opponent": "Booze Hounds",
	    "score": 27,
	    "opponentScore": 13,
	    "field": "Vietnam Vets #2",
	    "wasHome": 1,
	    "teamLeagueId": 12
	}
		{
			"gameId": 36,
			"teamLeaguePlayerId": 49,
			"bO": 1,
			"pA": 5,
			"r": 4,
			"rBI": 6,
			"b1": 3,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 36,
			"teamLeaguePlayerId": 61,
			"bO": 2,
			"pA": 5,
			"r": 4,
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
			"gameId": 36,
			"teamLeaguePlayerId": 50,
			"bO": 3,
			"pA": 5,
			"r": 2,
			"rBI": 6,
			"b1": 4,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 36,
			"teamLeaguePlayerId": 51,
			"bO": 4,
			"pA": 5,
			"r": 0,
			"rBI": 1,
			"b1": 5,
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
			"gameId": 36,
			"teamLeaguePlayerId": 56,
			"bO": 5,
			"pA": 5,
			"r": 2,
			"rBI": 1,
			"b1": 0,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 36,
			"teamLeaguePlayerId": 53,
			"bO": 6,
			"pA": 5,
			"r": 3,
			"rBI": 3,
			"b1": 3,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 36,
			"teamLeaguePlayerId": 54,
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
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 36,
			"teamLeaguePlayerId": 57,
			"bO": 8,
			"pA": 4,
			"r": 4,
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
			"gameId": 36,
			"teamLeaguePlayerId": 59,
			"bO": 9,
			"pA": 4,
			"r": 3,
			"rBI": 3,
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
			"gameId": 36,
			"teamLeaguePlayerId": 58,
			"bO": 10,
			"pA": 4,
			"r": 4,
			"rBI": 3,
			"b1": 1,
			"b2": 3,
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
	    "date": "2022-03-25 18:30:00" ,
	    "opponent": "Rip Stix",
	    "score": 21,
	    "opponentScore": 10,
	    "field": "Tingley #2",
	    "wasHome": 1,
	    "teamLeagueId": 12
	}
		{
			"gameId": 37,
			"teamLeaguePlayerId": 49,
			"bO": 1,
			"pA": 5,
			"r": 3,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 37,
			"teamLeaguePlayerId": 61,
			"bO": 2,
			"pA": 5,
			"r": 1,
			"rBI": 2,
			"b1": 0,
			"b2": 1,
			"b3": 0,
			"hR": 0,
			"bB": 0,
			"sO": 0,
			"sAC": 1,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 37,
			"teamLeaguePlayerId": 50,
			"bO": 3,
			"pA": 5,
			"r": 3,
			"rBI": 2,
			"b1": 3,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 37,
			"teamLeaguePlayerId": 51,
			"bO": 4,
			"pA": 5,
			"r": 3,
			"rBI": 3,
			"b1": 1,
			"b2": 1,
			"b3": 1,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 37,
			"teamLeaguePlayerId": 52,
			"bO": 5,
			"pA": 5,
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
			"gameId": 37,
			"teamLeaguePlayerId": 53,
			"bO": 6,
			"pA": 5,
			"r": 2,
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
			"gameId": 37,
			"teamLeaguePlayerId": 57,
			"bO": 7,
			"pA": 4,
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
			"gameId": 37,
			"teamLeaguePlayerId": 54,
			"bO": 8,
			"pA": 4,
			"r": 3,
			"rBI": 3,
			"b1": 3,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 37,
			"teamLeaguePlayerId": 55,
			"bO": 9,
			"pA": 4,
			"r": 1,
			"rBI": 1,
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
			"gameId": 37,
			"teamLeaguePlayerId": 58,
			"bO": 10,
			"pA": 4,
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
	    "date": "2022-03-25 20:30:00" ,
	    "opponent": "Jager Bombers",
	    "score": 16,
	    "opponentScore": 7,
	    "field": "Tingley #1",
	    "wasHome": 0,
	    "teamLeagueId": 12
	}
		{
			"gameId": 38,
			"teamLeaguePlayerId": 49,
			"bO": 1,
			"pA": 4,
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
			"gameId": 38,
			"teamLeaguePlayerId": 61,
			"bO": 2,
			"pA": 4,
			"r": 2,
			"rBI": 2,
			"b1": 2,
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
			"gameId": 38,
			"teamLeaguePlayerId": 50,
			"bO": 3,
			"pA": 4,
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
			"gameId": 38,
			"teamLeaguePlayerId": 51,
			"bO": 4,
			"pA": 4,
			"r": 1,
			"rBI": 1,
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
			"gameId": 38,
			"teamLeaguePlayerId": 52,
			"bO": 5,
			"pA": 4,
			"r": 2,
			"rBI": 2,
			"b1": 1,
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
			"gameId": 38,
			"teamLeaguePlayerId": 53,
			"bO": 6,
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
			"gameId": 38,
			"teamLeaguePlayerId": 57,
			"bO": 7,
			"pA": 4,
			"r": 2,
			"rBI": 3,
			"b1": 0,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 38,
			"teamLeaguePlayerId": 54,
			"bO": 8,
			"pA": 4,
			"r": 1,
			"rBI": 2,
			"b1": 0,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 38,
			"teamLeaguePlayerId": 55,
			"bO": 9,
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
			"gameId": 38,
			"teamLeaguePlayerId": 62,
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
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 38,
			"teamLeaguePlayerId": 58,
			"bO": 11,
			"pA": 3,
			"r": 2,
			"rBI": 0,
			"b1": 0,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
	{
	    "date": "2022-04-01 18:30:00" ,
	    "opponent": "Free Agents",
	    "score": 15,
	    "opponentScore": 14,
	    "field": "Vietnam Vets #1",
	    "wasHome": 1,
	    "teamLeagueId": 12
	}
		{
			"gameId": 39,
			"teamLeaguePlayerId": 56,
			"bO": 1,
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
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 39,
			"teamLeaguePlayerId": 61,
			"bO": 2,
			"pA": 3,
			"r": 2,
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
			"gameId": 39,
			"teamLeaguePlayerId": 50,
			"bO": 3,
			"pA": 3,
			"r": 1,
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
			"gameId": 39,
			"teamLeaguePlayerId": 51,
			"bO": 4,
			"pA": 3,
			"r": 1,
			"rBI": 4,
			"b1": 0,
			"b2": 0,
			"b3": 1,
			"hR": 1,
			"bB": 0,
			"sO": 1,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 39,
			"teamLeaguePlayerId": 52,
			"bO": 5,
			"pA": 3,
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
			"gameId": 39,
			"teamLeaguePlayerId": 57,
			"bO": 6,
			"pA": 3,
			"r": 3,
			"rBI": 0,
			"b1": 1,
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
			"gameId": 39,
			"teamLeaguePlayerId": 54,
			"bO": 7,
			"pA": 3,
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
			"gameId": 39,
			"teamLeaguePlayerId": 59,
			"bO": 8,
			"pA": 3,
			"r": 3,
			"rBI": 3,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 39,
			"teamLeaguePlayerId": 62,
			"bO": 9,
			"pA": 3,
			"r": 1,
			"rBI": 0,
			"b1": 0,
			"b2": 0,
			"b3": 1,
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
			"gameId": 39,
			"teamLeaguePlayerId": 58,
			"bO": 10,
			"pA": 3,
			"r": 1,
			"rBI": 2,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 39,
			"teamLeaguePlayerId": 64,
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
			"gameId": 39,
			"teamLeaguePlayerId": 65,
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
	    "date": "2022-04-01 19:30:00" ,
	    "opponent": "Missing Pieces",
	    "score": 23,
	    "opponentScore": 18,
	    "field": "Vietnam Vets #1",
	    "wasHome": 0,
	    "teamLeagueId": 12
	}
		{
			"gameId": 40,
			"teamLeaguePlayerId": 56,
			"bO": 1,
			"pA": 4,
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
			"gameId": 40,
			"teamLeaguePlayerId": 61,
			"bO": 2,
			"pA": 4,
			"r": 1,
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
			"gameId": 40,
			"teamLeaguePlayerId": 50,
			"bO": 3,
			"pA": 4,
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
			"gameId": 40,
			"teamLeaguePlayerId": 51,
			"bO": 4,
			"pA": 4,
			"r": 3,
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
			"gameId": 40,
			"teamLeaguePlayerId": 52,
			"bO": 5,
			"pA": 4,
			"r": 4,
			"rBI": 0,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 3,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 40,
			"teamLeaguePlayerId": 57,
			"bO": 6,
			"pA": 4,
			"r": 2,
			"rBI": 7,
			"b1": 0,
			"b2": 0,
			"b3": 1,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 40,
			"teamLeaguePlayerId": 54,
			"bO": 7,
			"pA": 4,
			"r": 4,
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
			"gameId": 40,
			"teamLeaguePlayerId": 59,
			"bO": 8,
			"pA": 4,
			"r": 3,
			"rBI": 7,
			"b1": 1,
			"b2": 1,
			"b3": 0,
			"hR": 2,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 40,
			"teamLeaguePlayerId": 62,
			"bO": 9,
			"pA": 4,
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
			"gameId": 40,
			"teamLeaguePlayerId": 58,
			"bO": 10,
			"pA": 4,
			"r": 3,
			"rBI": 3,
			"b1": 3,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 40,
			"teamLeaguePlayerId": 64,
			"bO": 11,
			"pA": 4,
			"r": 1,
			"rBI": 1,
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
			"gameId": 40,
			"teamLeaguePlayerId": 65,
			"bO": 12,
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
			"gameId": 40,
			"teamLeaguePlayerId": 55,
			"bO": 13,
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
	    "date": "2022-04-08 19:30:00" ,
	    "opponent": "Booze Hounds",
	    "score": 22,
	    "opponentScore": 0,
	    "field": "Tingley #2",
	    "wasHome": 0,
	    "teamLeagueId": 12
	}
		{
			"gameId": 41,
			"teamLeaguePlayerId": 49,
			"bO": 1,
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
			"gameId": 41,
			"teamLeaguePlayerId": 61,
			"bO": 2,
			"pA": 4,
			"r": 3,
			"rBI": 3,
			"b1": 2,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 41,
			"teamLeaguePlayerId": 50,
			"bO": 3,
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
			"gameId": 41,
			"teamLeaguePlayerId": 51,
			"bO": 4,
			"pA": 4,
			"r": 3,
			"rBI": 6,
			"b1": 1,
			"b2": 1,
			"b3": 1,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 41,
			"teamLeaguePlayerId": 52,
			"bO": 5,
			"pA": 4,
			"r": 2,
			"rBI": 1,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 41,
			"teamLeaguePlayerId": 57,
			"bO": 6,
			"pA": 4,
			"r": 3,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 41,
			"teamLeaguePlayerId": 53,
			"bO": 7,
			"pA": 4,
			"r": 2,
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
			"gameId": 41,
			"teamLeaguePlayerId": 54,
			"bO": 8,
			"pA": 4,
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
			"gameId": 41,
			"teamLeaguePlayerId": 55,
			"bO": 9,
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
			"gameId": 41,
			"teamLeaguePlayerId": 56,
			"bO": 10,
			"pA": 4,
			"r": 1,
			"rBI": 1,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 41,
			"teamLeaguePlayerId": 59,
			"bO": 11,
			"pA": 4,
			"r": 1,
			"rBI": 3,
			"b1": 0,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 41,
			"teamLeaguePlayerId": 63,
			"bO": 12,
			"pA": 3,
			"r": 2,
			"rBI": 0,
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
	    "date": "2022-04-08 20:30:00" ,
	    "opponent": "Rip Stix",
	    "score": 33,
	    "opponentScore": 11,
	    "field": "Tingley #1",
	    "wasHome": 0,
	    "teamLeagueId": 12
	}
		{
			"gameId": 42,
			"teamLeaguePlayerId": 49,
			"bO": 1,
			"pA": 5,
			"r": 3,
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
			"gameId": 42,
			"teamLeaguePlayerId": 61,
			"bO": 2,
			"pA": 5,
			"r": 3,
			"rBI": 0,
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
			"gameId": 42,
			"teamLeaguePlayerId": 50,
			"bO": 3,
			"pA": 5,
			"r": 4,
			"rBI": 6,
			"b1": 4,
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
			"gameId": 42,
			"teamLeaguePlayerId": 51,
			"bO": 4,
			"pA": 5,
			"r": 4,
			"rBI": 6,
			"b1": 1,
			"b2": 1,
			"b3": 0,
			"hR": 2,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 42,
			"teamLeaguePlayerId": 52,
			"bO": 5,
			"pA": 4,
			"r": 3,
			"rBI": 1,
			"b1": 0,
			"b2": 1,
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
			"gameId": 42,
			"teamLeaguePlayerId": 57,
			"bO": 6,
			"pA": 4,
			"r": 2,
			"rBI": 5,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 1,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 42,
			"teamLeaguePlayerId": 53,
			"bO": 7,
			"pA": 4,
			"r": 3,
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
			"gameId": 42,
			"teamLeaguePlayerId": 54,
			"bO": 8,
			"pA": 4,
			"r": 2,
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
			"gameId": 42,
			"teamLeaguePlayerId": 55,
			"bO": 9,
			"pA": 4,
			"r": 2,
			"rBI": 11,
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
			"gameId": 42,
			"teamLeaguePlayerId": 56,
			"bO": 10,
			"pA": 4,
			"r": 3,
			"rBI": 2,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 42,
			"teamLeaguePlayerId": 59,
			"bO": 11,
			"pA": 4,
			"r": 3,
			"rBI": 3,
			"b1": 2,
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
			"gameId": 42,
			"teamLeaguePlayerId": 63,
			"bO": 12,
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

-- SBRef.com Summer 2022
	{
	    "date": "2022-04-19 19:30:00" ,
	    "opponent": "Slush Puppies",
	    "score": 15,
	    "opponentScore": 10,
	    "field": "Barelas #3",
	    "wasHome": 1,
	    "teamLeagueId": 14
	}
		{
			"gameId": 49,
			"teamLeaguePlayerId": 68,
			"bO": 1,
			"pA": 3,
			"r": 2,
			"rBI": 0,
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
			"gameId": 49,
			"teamLeaguePlayerId": 71,
			"bO": 2,
			"pA": 3,
			"r": 2,
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
			"gameId": 49,
			"teamLeaguePlayerId": 66,
			"bO": 3,
			"pA": 3,
			"r": 3,
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
			"gameId": 49,
			"teamLeaguePlayerId": 67,
			"bO": 4,
			"pA": 3,
			"r": 2,
			"rBI": 5,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 1,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 49,
			"teamLeaguePlayerId": 75,
			"bO": 5,
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
			"gameId": 49,
			"teamLeaguePlayerId": 74,
			"bO": 6,
			"pA": 3,
			"r": 2,
			"rBI": 3,
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
			"gameId": 49,
			"teamLeaguePlayerId": 70,
			"bO": 7,
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
			"gameId": 49,
			"teamLeaguePlayerId": 72,
			"bO": 8,
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
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 49,
			"teamLeaguePlayerId": 73,
			"bO": 9,
			"pA": 3,
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
			"gameId": 49,
			"teamLeaguePlayerId": 69,
			"bO": 10,
			"pA": 3,
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
			"gameId": 49,
			"teamLeaguePlayerId": 76,
			"bO": 11,
			"pA": 3,
			"r": 0,
			"rBI": 1,
			"b1": 1,
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
	    "date": "2022-04-26 20:30:00" ,
	    "opponent": "ABQ Guns",
	    "score": 6,
	    "opponentScore": 11,
	    "field": "Barelas #1",
	    "wasHome": 0,
	    "teamLeagueId": 14
	}
		{
			"gameId": 50,
			"teamLeaguePlayerId": 68,
			"bO": 1,
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
			"gameId": 50,
			"teamLeaguePlayerId": 77,
			"bO": 2,
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
			"gameId": 50,
			"teamLeaguePlayerId": 71,
			"bO": 3,
			"pA": 3,
			"r": 1,
			"rBI": 1,
			"b1": 0,
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
			"gameId": 50,
			"teamLeaguePlayerId": 66,
			"bO": 4,
			"pA": 3,
			"r": 1,
			"rBI": 2,
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
			"gameId": 50,
			"teamLeaguePlayerId": 75,
			"bO": 5,
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
			"gameId": 50,
			"teamLeaguePlayerId": 74,
			"bO": 6,
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
			"gameId": 50,
			"teamLeaguePlayerId": 78,
			"bO": 7,
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
			"gameId": 50,
			"teamLeaguePlayerId": 72,
			"bO": 8,
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
			"gameId": 50,
			"teamLeaguePlayerId": 73,
			"bO": 9,
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
			"gameId": 50,
			"teamLeaguePlayerId": 69,
			"bO": 10,
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
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 50,
			"teamLeaguePlayerId": 76,
			"bO": 11,
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
	    "date": "2022-05-03 20:30:00" ,
	    "opponent": "Icemen",
	    "score": 11,
	    "opponentScore": 28,
	    "field": "Barelas #2",
	    "wasHome": 1,
	    "teamLeagueId": 14
	}
		{
			"gameId": 51,
			"teamLeaguePlayerId": 77,
			"bO": 1,
			"pA": 3,
			"r": 0,
			"rBI": 3,
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
			"gameId": 51,
			"teamLeaguePlayerId": 75,
			"bO": 2,
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
			"gameId": 51,
			"teamLeaguePlayerId": 66,
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
			"gameId": 51,
			"teamLeaguePlayerId": 67,
			"bO": 4,
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
			"gameId": 51,
			"teamLeaguePlayerId": 74,
			"bO": 5,
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
			"gameId": 51,
			"teamLeaguePlayerId": 71,
			"bO": 6,
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
			"gameId": 51,
			"teamLeaguePlayerId": 68,
			"bO": 7,
			"pA": 3,
			"r": 1,
			"rBI": 1,
			"b1": 0,
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
			"gameId": 51,
			"teamLeaguePlayerId": 78,
			"bO": 8,
			"pA": 3,
			"r": 2,
			"rBI": 3,
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
			"gameId": 51,
			"teamLeaguePlayerId": 70,
			"bO": 9,
			"pA": 3,
			"r": 1,
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
			"gameId": 51,
			"teamLeaguePlayerId": 72,
			"bO": 10,
			"pA": 2,
			"r": 2,
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
			"gameId": 51,
			"teamLeaguePlayerId": 73,
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
			"gameId": 51,
			"teamLeaguePlayerId": 76,
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
	    "date": "2022-05-10 20:30:00" ,
	    "opponent": "ASM Crew",
	    "score": 6,
	    "opponentScore": 16,
	    "field": "Barelas #2",
	    "wasHome": 1,
	    "teamLeagueId": 14
	}
		{
			"gameId": 52,
			"teamLeaguePlayerId": 77,
			"bO": 1,
			"pA": 3,
			"r": 2,
			"rBI": 1,
			"b1": 0,
			"b2": 2,
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
			"gameId": 52,
			"teamLeaguePlayerId": 71,
			"bO": 2,
			"pA": 3,
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
			"gameId": 52,
			"teamLeaguePlayerId": 66,
			"bO": 3,
			"pA": 3,
			"r": 1,
			"rBI": 1,
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
			"gameId": 52,
			"teamLeaguePlayerId": 67,
			"bO": 4,
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
			"gameId": 52,
			"teamLeaguePlayerId": 75,
			"bO": 5,
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
			"gameId": 52,
			"teamLeaguePlayerId": 74,
			"bO": 6,
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
			"gameId": 52,
			"teamLeaguePlayerId": 78,
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
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 52,
			"teamLeaguePlayerId": 72,
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
			"gameId": 52,
			"teamLeaguePlayerId": 73,
			"bO": 9,
			"pA": 2,
			"r": 0,
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
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 52,
			"teamLeaguePlayerId": 69,
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
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 52,
			"teamLeaguePlayerId": 76,
			"bO": 11,
			"pA": 2,
			"r": 1,
			"rBI": 1,
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
	    "date": "2022-05-17 20:30:00" ,
	    "opponent": "McGlovin",
	    "score": 7,
	    "opponentScore": 8,
	    "field": "Barelas #1",
	    "wasHome": 0,
	    "teamLeagueId": 14
	}
		{
			"gameId": 57,
			"teamLeaguePlayerId": 74,
			"bO": 1,
			"pA": 4,
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
			"gameId": 57,
			"teamLeaguePlayerId": 71,
			"bO": 2,
			"pA": 4,
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
			"gameId": 57,
			"teamLeaguePlayerId": 66,
			"bO": 3,
			"pA": 4,
			"r": 2,
			"rBI": 3,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 57,
			"teamLeaguePlayerId": 67,
			"bO": 4,
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
			"gameId": 57,
			"teamLeaguePlayerId": 75,
			"bO": 5,
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
			"gameId": 57,
			"teamLeaguePlayerId": 78,
			"bO": 6,
			"pA": 3,
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
			"gameId": 57,
			"teamLeaguePlayerId": 72,
			"bO": 7,
			"pA": 3,
			"r": 0,
			"rBI": 1,
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
			"gameId": 57,
			"teamLeaguePlayerId": 73,
			"bO": 8,
			"pA": 3,
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
			"gameId": 57,
			"teamLeaguePlayerId": 69,
			"bO": 9,
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
			"gameId": 57,
			"teamLeaguePlayerId": 76,
			"bO": 10,
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
	    "date": "2022-05-24 19:30:00" ,
	    "opponent": "Swingmen",
	    "score": 10,
	    "opponentScore": 14,
	    "field": "Barelas #3",
	    "wasHome": 1,
	    "teamLeagueId": 14
	}
		{
			"gameId": 58,
			"teamLeaguePlayerId": 77,
			"bO": 1,
			"pA": 4,
			"r": 1,
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
			"gameId": 58,
			"teamLeaguePlayerId": 71,
			"bO": 2,
			"pA": 4,
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
			"gameId": 58,
			"teamLeaguePlayerId": 66,
			"bO": 3,
			"pA": 4,
			"r": 1,
			"rBI": 2,
			"b1": 1,
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
			"gameId": 58,
			"teamLeaguePlayerId": 67,
			"bO": 4,
			"pA": 4,
			"r": 1,
			"rBI": 3,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 1,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 58,
			"teamLeaguePlayerId": 75,
			"bO": 5,
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
			"gameId": 58,
			"teamLeaguePlayerId": 78,
			"bO": 6,
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
			"gameId": 58,
			"teamLeaguePlayerId": 72,
			"bO": 7,
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
			"gameId": 58,
			"teamLeaguePlayerId": 74,
			"bO": 8,
			"pA": 3,
			"r": 1,
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
			"gameId": 58,
			"teamLeaguePlayerId": 69,
			"bO": 9,
			"pA": 3,
			"r": 1,
			"rBI": 3,
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
			"gameId": 58,
			"teamLeaguePlayerId": 76,
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
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
	{
	    "date": "2022-05-31 19:30:00" ,
	    "opponent": "Legends",
	    "score": 21,
	    "opponentScore": 20,
	    "field": "Barelas #2",
	    "wasHome": 0,
	    "teamLeagueId": 14
	}
		{
			"gameId": 59,
			"teamLeaguePlayerId": 77,
			"bO": 1,
			"pA": 5,
			"r": 2,
			"rBI": 5,
			"b1": 0,
			"b2": 1,
			"b3": 1,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 59,
			"teamLeaguePlayerId": 71,
			"bO": 2,
			"pA": 5,
			"r": 2,
			"rBI": 1,
			"b1": 0,
			"b2": 1,
			"b3": 1,
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
			"gameId": 59,
			"teamLeaguePlayerId": 75,
			"bO": 3,
			"pA": 5,
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
		{
			"gameId": 59,
			"teamLeaguePlayerId": 70,
			"bO": 4,
			"pA": 5,
			"r": 2,
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
			"gameId": 59,
			"teamLeaguePlayerId": 78,
			"bO": 5,
			"pA": 5,
			"r": 3,
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
			"gameId": 59,
			"teamLeaguePlayerId": 74,
			"bO": 6,
			"pA": 5,
			"r": 4,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 59,
			"teamLeaguePlayerId": 72,
			"bO": 7,
			"pA": 5,
			"r": 1,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 59,
			"teamLeaguePlayerId": 73,
			"bO": 8,
			"pA": 5,
			"r": 2,
			"rBI": 5,
			"b1": 2,
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
			"gameId": 59,
			"teamLeaguePlayerId": 69,
			"bO": 9,
			"pA": 5,
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
			"gameId": 59,
			"teamLeaguePlayerId": 76,
			"bO": 10,
			"pA": 5,
			"r": 1,
			"rBI": 1,
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
	    "date": "2022-06-14 19:30:00" ,
	    "opponent": "Los Borachos",
	    "score": 7,
	    "opponentScore": 17,
	    "field": "Barelas #2",
	    "wasHome": 0,
	    "teamLeagueId": 14
	}
		{
			"gameId": 60,
			"teamLeaguePlayerId": 77,
			"bO": 1,
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
			"gameId": 60,
			"teamLeaguePlayerId": 71,
			"bO": 2,
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
			"gameId": 60,
			"teamLeaguePlayerId": 66,
			"bO": 3,
			"pA": 3,
			"r": 1,
			"rBI": 2,
			"b1": 0,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 60,
			"teamLeaguePlayerId": 68,
			"bO": 4,
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
			"gameId": 60,
			"teamLeaguePlayerId": 74,
			"bO": 5,
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
			"gameId": 60,
			"teamLeaguePlayerId": 78,
			"bO": 6,
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
			"gameId": 60,
			"teamLeaguePlayerId": 70,
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
			"gameId": 60,
			"teamLeaguePlayerId": 72,
			"bO": 8,
			"pA": 2,
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
			"gameId": 60,
			"teamLeaguePlayerId": 73,
			"bO": 9,
			"pA": 2,
			"r": 1,
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
			"gameId": 60,
			"teamLeaguePlayerId": 76,
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
			"gameId": 60,
			"teamLeaguePlayerId": 75,
			"bO": 11,
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
	    "date": "2022-06-21 19:30:00" ,
	    "opponent": "Slush Puppies",
	    "score": 16,
	    "opponentScore": 5,
	    "field": "Barelas #3",
	    "wasHome": 0,
	    "teamLeagueId": 14
	}
		{
			"gameId": 61,
			"teamLeaguePlayerId": 77,
			"bO": 1,
			"pA": 5,
			"r": 3,
			"rBI": 2,
			"b1": 3,
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
			"gameId": 61,
			"teamLeaguePlayerId": 71,
			"bO": 2,
			"pA": 5,
			"r": 3,
			"rBI": 5,
			"b1": 1,
			"b2": 1,
			"b3": 0,
			"hR": 2,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 61,
			"teamLeaguePlayerId": 67,
			"bO": 3,
			"pA": 5,
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
			"gameId": 61,
			"teamLeaguePlayerId": 75,
			"bO": 4,
			"pA": 5,
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
			"gameId": 61,
			"teamLeaguePlayerId": 68,
			"bO": 5,
			"pA": 5,
			"r": 2,
			"rBI": 3,
			"b1": 0,
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
			"gameId": 61,
			"teamLeaguePlayerId": 78,
			"bO": 6,
			"pA": 5,
			"r": 2,
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
			"gameId": 61,
			"teamLeaguePlayerId": 72,
			"bO": 7,
			"pA": 5,
			"r": 1,
			"rBI": 1,
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
			"gameId": 61,
			"teamLeaguePlayerId": 73,
			"bO": 8,
			"pA": 5,
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
			"gameId": 61,
			"teamLeaguePlayerId": 76,
			"bO": 9,
			"pA": 5,
			"r": 1,
			"rBI": 0,
			"b1": 1,
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
	    "date": "2022-06-28 20:30:00" ,
	    "opponent": "ABQ Guns",
	    "score": 4,
	    "opponentScore": 18,
	    "field": "Barelas #1",
	    "wasHome": 1,
	    "teamLeagueId": 14
	}
		{
			"gameId": 62,
			"teamLeaguePlayerId": 77,
			"bO": 1,
			"pA": 3,
			"r": 2,
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
			"gameId": 62,
			"teamLeaguePlayerId": 71,
			"bO": 2,
			"pA": 3,
			"r": 1,
			"rBI": 1,
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
			"gameId": 62,
			"teamLeaguePlayerId": 67,
			"bO": 3,
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
			"gameId": 62,
			"teamLeaguePlayerId": 75,
			"bO": 4,
			"pA": 3,
			"r": 1,
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
			"gameId": 62,
			"teamLeaguePlayerId": 74,
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
			"gameId": 62,
			"teamLeaguePlayerId": 78,
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
			"gameId": 62,
			"teamLeaguePlayerId": 72,
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
			"gameId": 62,
			"teamLeaguePlayerId": 73,
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
			"gameId": 62,
			"teamLeaguePlayerId": 76,
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
	    "date": "2022-07-05 20:30:00" ,
	    "opponent": "Icemen",
	    "score": 11,
	    "opponentScore": 17,
	    "field": "Barelas #2",
	    "wasHome": 0,
	    "teamLeagueId": 14
	}
		{
			"gameId": 63,
			"teamLeaguePlayerId": 77,
			"bO": 1,
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
			"gameId": 63,
			"teamLeaguePlayerId": 71,
			"bO": 2,
			"pA": 3,
			"r": 1,
			"rBI": 0,
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
			"gameId": 63,
			"teamLeaguePlayerId": 66,
			"bO": 3,
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
			"gameId": 63,
			"teamLeaguePlayerId": 67,
			"bO": 4,
			"pA": 3,
			"r": 1,
			"rBI": 1,
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
			"gameId": 63,
			"teamLeaguePlayerId": 75,
			"bO": 5,
			"pA": 3,
			"r": 3,
			"rBI": 0,
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
			"gameId": 63,
			"teamLeaguePlayerId": 74,
			"bO": 6,
			"pA": 3,
			"r": 1,
			"rBI": 2,
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
			"gameId": 63,
			"teamLeaguePlayerId": 70,
			"bO": 7,
			"pA": 3,
			"r": 1,
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
			"gameId": 63,
			"teamLeaguePlayerId": 95,
			"bO": 8,
			"pA": 3,
			"r": 1,
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
			"gameId": 63,
			"teamLeaguePlayerId": 69,
			"bO": 9,
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
			"gameId": 63,
			"teamLeaguePlayerId": 96,
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
			"gameId": 63,
			"teamLeaguePlayerId": 76,
			"bO": 11,
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
	    "date": "2022-07-19 20:30:00" ,
	    "opponent": "McGlovin",
	    "score": 18,
	    "opponentScore": 9,
	    "field": "Barelas #1",
	    "wasHome": 1,
	    "teamLeagueId": 14
	}
		{
			"gameId": 64,
			"teamLeaguePlayerId": 77,
			"bO": 1,
			"pA": 4,
			"r": 3,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 64,
			"teamLeaguePlayerId": 71,
			"bO": 2,
			"pA": 4,
			"r": 1,
			"rBI": 4,
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
			"gameId": 64,
			"teamLeaguePlayerId": 66,
			"bO": 3,
			"pA": 4,
			"r": 1,
			"rBI": 0,
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
			"gameId": 64,
			"teamLeaguePlayerId": 67,
			"bO": 4,
			"pA": 4,
			"r": 1,
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
			"gameId": 64,
			"teamLeaguePlayerId": 95,
			"bO": 5,
			"pA": 4,
			"r": 1,
			"rBI": 2,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 0,
			"sO": 0,
			"sAC": 2,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 64,
			"teamLeaguePlayerId": 68,
			"bO": 6,
			"pA": 4,
			"r": 2,
			"rBI": 0,
			"b1": 0,
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
			"gameId": 64,
			"teamLeaguePlayerId": 74,
			"bO": 7,
			"pA": 3,
			"r": 2,
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
			"gameId": 64,
			"teamLeaguePlayerId": 78,
			"bO": 8,
			"pA": 3,
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
			"gameId": 64,
			"teamLeaguePlayerId": 73,
			"bO": 9,
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
			"gameId": 64,
			"teamLeaguePlayerId": 69,
			"bO": 10,
			"pA": 3,
			"r": 1,
			"rBI": 1,
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
			"gameId": 64,
			"teamLeaguePlayerId": 76,
			"bO": 11,
			"pA": 3,
			"r": 2,
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
	    "date": "2022-07-26 19:30:00" ,
	    "opponent": "Swingmen",
	    "score": 10,
	    "opponentScore": 8,
	    "field": "Barelas #3",
	    "wasHome": 0,
	    "teamLeagueId": 14
	}
		{
			"gameId": 65,
			"teamLeaguePlayerId": 77,
			"bO": 1,
			"pA": 4,
			"r": 1,
			"rBI": 1,
			"b1": 2,
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
			"gameId": 65,
			"teamLeaguePlayerId": 71,
			"bO": 2,
			"pA": 4,
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
			"gameId": 65,
			"teamLeaguePlayerId": 66,
			"bO": 3,
			"pA": 4,
			"r": 1,
			"rBI": 1,
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
			"gameId": 65,
			"teamLeaguePlayerId": 67,
			"bO": 4,
			"pA": 4,
			"r": 0,
			"rBI": 0,
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
			"gameId": 65,
			"teamLeaguePlayerId": 95,
			"bO": 5,
			"pA": 4,
			"r": 1,
			"rBI": 1,
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
			"gameId": 65,
			"teamLeaguePlayerId": 75,
			"bO": 6,
			"pA": 4,
			"r": 1,
			"rBI": 1,
			"b1": 0,
			"b2": 0,
			"b3": 1,
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
			"gameId": 65,
			"teamLeaguePlayerId": 68,
			"bO": 7,
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
			"gameId": 65,
			"teamLeaguePlayerId": 74,
			"bO": 8,
			"pA": 3,
			"r": 1,
			"rBI": 0,
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
			"gameId": 65,
			"teamLeaguePlayerId": 70,
			"bO": 9,
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
			"gameId": 65,
			"teamLeaguePlayerId": 73,
			"bO": 10,
			"pA": 4,
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
			"gameId": 65,
			"teamLeaguePlayerId": 69,
			"bO": 11,
			"pA": 3,
			"r": 0,
			"rBI": 2,
			"b1": 0,
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
			"gameId": 65,
			"teamLeaguePlayerId": 76,
			"bO": 12,
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
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
	{
	    "date": "2022-08-02 19:30:00" ,
	    "opponent": "Legends",
	    "score": 14,
	    "opponentScore": 12,
	    "field": "Barelas #2",
	    "wasHome": 1,
	    "teamLeagueId": 14
	}
		{
			"gameId": 66,
			"teamLeaguePlayerId": 77,
			"bO": 1,
			"pA": 4,
			"r": 2,
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
			"gameId": 66,
			"teamLeaguePlayerId": 71,
			"bO": 2,
			"pA": 4,
			"r": 1,
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
			"gameId": 66,
			"teamLeaguePlayerId": 66,
			"bO": 3,
			"pA": 4,
			"r": 1,
			"rBI": 1,
			"b1": 0,
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
			"gameId": 66,
			"teamLeaguePlayerId": 75,
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
			"gameId": 66,
			"teamLeaguePlayerId": 95,
			"bO": 5,
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
			"gameId": 66,
			"teamLeaguePlayerId": 74,
			"bO": 6,
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
			"gameId": 66,
			"teamLeaguePlayerId": 68,
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
			"gameId": 66,
			"teamLeaguePlayerId": 78,
			"bO": 8,
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
			"gameId": 66,
			"teamLeaguePlayerId": 70,
			"bO": 9,
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
			"gameId": 66,
			"teamLeaguePlayerId": 73,
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
			"gameId": 66,
			"teamLeaguePlayerId": 69,
			"bO": 11,
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
			"fO": 1,
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 66,
			"teamLeaguePlayerId": 76,
			"bO": 12,
			"pA": 3,
			"r": 1,
			"rBI": 0,
			"b1": 1,
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
	    "date": "2022-08-02 20:30:00" ,
	    "opponent": "ASM Crew",
	    "score": 2,
	    "opponentScore": 19,
	    "field": "Barelas #3",
	    "wasHome": 1,
	    "teamLeagueId": 14
	}
		{
			"gameId": 67,
			"teamLeaguePlayerId": 77,
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
			"gameId": 67,
			"teamLeaguePlayerId": 71,
			"bO": 2,
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
			"gameId": 67,
			"teamLeaguePlayerId": 66,
			"bO": 3,
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
			"gameId": 67,
			"teamLeaguePlayerId": 75,
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
			"gameId": 67,
			"teamLeaguePlayerId": 95,
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
			"gameId": 67,
			"teamLeaguePlayerId": 74,
			"bO": 6,
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
			"gameId": 67,
			"teamLeaguePlayerId": 68,
			"bO": 7,
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
			"gameId": 67,
			"teamLeaguePlayerId": 78,
			"bO": 8,
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
			"gameId": 67,
			"teamLeaguePlayerId": 70,
			"bO": 9,
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
			"gameId": 67,
			"teamLeaguePlayerId": 73,
			"bO": 10,
			"pA": 2,
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
			"gameId": 67,
			"teamLeaguePlayerId": 69,
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
			"gameId": 67,
			"teamLeaguePlayerId": 76,
			"bO": 12,
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
	    "date": "2022-08-16 19:30:00" ,
	    "opponent": "Los Borachos",
	    "score": 16,
	    "opponentScore": 21,
	    "field": "Barelas #2",
	    "wasHome": 1,
	    "teamLeagueId": 14
	}
		{
			"gameId": 68,
			"teamLeaguePlayerId": 71,
			"bO": 1,
			"pA": 4,
			"r": 2,
			"rBI": 2,
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
			"gameId": 68,
			"teamLeaguePlayerId": 67,
			"bO": 2,
			"pA": 4,
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
			"gameId": 68,
			"teamLeaguePlayerId": 66,
			"bO": 3,
			"pA": 4,
			"r": 1,
			"rBI": 4,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 68,
			"teamLeaguePlayerId": 95,
			"bO": 4,
			"pA": 4,
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
			"gameId": 68,
			"teamLeaguePlayerId": 68,
			"bO": 5,
			"pA": 4,
			"r": 3,
			"rBI": 1,
			"b1": 2,
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
			"gameId": 68,
			"teamLeaguePlayerId": 70,
			"bO": 6,
			"pA": 4,
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
			"gameId": 68,
			"teamLeaguePlayerId": 78,
			"bO": 7,
			"pA": 4,
			"r": 3,
			"rBI": 0,
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
			"gameId": 68,
			"teamLeaguePlayerId": 73,
			"bO": 8,
			"pA": 4,
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
			"gameId": 68,
			"teamLeaguePlayerId": 69,
			"bO": 9,
			"pA": 4,
			"r": 0,
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
			"gameId": 68,
			"teamLeaguePlayerId": 76,
			"bO": 10,
			"pA": 3,
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
			"gameId": 68,
			"teamLeaguePlayerId": 96,
			"bO": 11,
			"pA": 3,
			"r": 1,
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

-- Chups Summer 2022
	{
	    "date": "2022-05-06 20:30:00" ,
	    "opponent": "Jager Bombers",
	    "score": 27,
	    "opponentScore": 5,
	    "field": "Vietnam Vets #2",
	    "wasHome": 0,
	    "teamLeagueId": 15
	}
		{
			"gameId": 53,
			"teamLeaguePlayerId": 91,
			"bO": 1,
			"pA": 5,
			"r": 3,
			"rBI": 2,
			"b1": 1,
			"b2": 1,
			"b3": 0,
			"hR": 0,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 53,
			"teamLeaguePlayerId": 83,
			"bO": 2,
			"pA": 5,
			"r": 4,
			"rBI": 3,
			"b1": 1,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 53,
			"teamLeaguePlayerId": 80,
			"bO": 3,
			"pA": 5,
			"r": 2,
			"rBI": 3,
			"b1": 3,
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
			"gameId": 53,
			"teamLeaguePlayerId": 81,
			"bO": 4,
			"pA": 5,
			"r": 3,
			"rBI": 3,
			"b1": 1,
			"b2": 3,
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
			"gameId": 53,
			"teamLeaguePlayerId": 82,
			"bO": 5,
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
			"gameId": 53,
			"teamLeaguePlayerId": 87,
			"bO": 6,
			"pA": 4,
			"r": 4,
			"rBI": 4,
			"b1": 2,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 53,
			"teamLeaguePlayerId": 86,
			"bO": 7,
			"pA": 4,
			"r": 3,
			"rBI": 2,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 53,
			"teamLeaguePlayerId": 84,
			"bO": 8,
			"pA": 4,
			"r": 2,
			"rBI": 2,
			"b1": 0,
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
			"gameId": 53,
			"teamLeaguePlayerId": 85,
			"bO": 9,
			"pA": 4,
			"r": 2,
			"rBI": 3,
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
			"gameId": 53,
			"teamLeaguePlayerId": 88,
			"bO": 10,
			"pA": 4,
			"r": 2,
			"rBI": 2,
			"b1": 2,
			"b2": 1,
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
	    "date": "2022-05-13 19:30:00" ,
	    "opponent": "Softball 4 Dummies",
	    "score": 31,
	    "opponentScore": 4,
	    "field": "Vietnam Vets #1",
	    "wasHome": 0,
	    "teamLeagueId": 15
	}
		{
			"gameId": 54,
			"teamLeaguePlayerId": 91,
			"bO": 1,
			"pA": 5,
			"r": 2,
			"rBI": 3,
			"b1": 1,
			"b2": 1,
			"b3": 1,
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
			"gameId": 54,
			"teamLeaguePlayerId": 83,
			"bO": 2,
			"pA": 5,
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
			"gameId": 54,
			"teamLeaguePlayerId": 80,
			"bO": 3,
			"pA": 5,
			"r": 5,
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
			"gameId": 54,
			"teamLeaguePlayerId": 81,
			"bO": 4,
			"pA": 5,
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
		{
			"gameId": 54,
			"teamLeaguePlayerId": 84,
			"bO": 5,
			"pA": 5,
			"r": 3,
			"rBI": 5,
			"b1": 3,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 54,
			"teamLeaguePlayerId": 87,
			"bO": 6,
			"pA": 5,
			"r": 3,
			"rBI": 0,
			"b1": 3,
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
			"gameId": 54,
			"teamLeaguePlayerId": 86,
			"bO": 7,
			"pA": 5,
			"r": 4,
			"rBI": 6,
			"b1": 3,
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
			"gameId": 54,
			"teamLeaguePlayerId": 94,
			"bO": 8,
			"pA": 5,
			"r": 4,
			"rBI": 2,
			"b1": 3,
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
			"gameId": 54,
			"teamLeaguePlayerId": 92,
			"bO": 9,
			"pA": 5,
			"r": 4,
			"rBI": 4,
			"b1": 3,
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
			"gameId": 54,
			"teamLeaguePlayerId": 89,
			"bO": 10,
			"pA": 5,
			"r": 1,
			"rBI": 4,
			"b1": 2,
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
			"gameId": 54,
			"teamLeaguePlayerId": 93,
			"bO": 11,
			"pA": 5,
			"r": 1,
			"rBI": 3,
			"b1": 3,
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
	    "date": "2022-05-20 18:30:00" ,
	    "opponent": "Rip Stix",
	    "score": 38,
	    "opponentScore": 4,
	    "field": "Vietnam Vets #2",
	    "wasHome": 1,
	    "teamLeagueId": 15
	}
		{
			"gameId": 55,
			"teamLeaguePlayerId": 79,
			"bO": 1,
			"pA": 5,
			"r": 4,
			"rBI": 2,
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
			"gameId": 55,
			"teamLeaguePlayerId": 91,
			"bO": 2,
			"pA": 5,
			"r": 4,
			"rBI": 5,
			"b1": 2,
			"b2": 1,
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
			"gameId": 55,
			"teamLeaguePlayerId": 80,
			"bO": 3,
			"pA": 5,
			"r": 2,
			"rBI": 2,
			"b1": 3,
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
			"gameId": 55,
			"teamLeaguePlayerId": 81,
			"bO": 4,
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
			"gameId": 55,
			"teamLeaguePlayerId": 82,
			"bO": 5,
			"pA": 5,
			"r": 3,
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
			"gameId": 55,
			"teamLeaguePlayerId": 90,
			"bO": 6,
			"pA": 5,
			"r": 3,
			"rBI": 2,
			"b1": 4,
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
			"gameId": 55,
			"teamLeaguePlayerId": 83,
			"bO": 7,
			"pA": 5,
			"r": 3,
			"rBI": 7,
			"b1": 1,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 55,
			"teamLeaguePlayerId": 84,
			"bO": 8,
			"pA": 5,
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
		{
			"gameId": 55,
			"teamLeaguePlayerId": 85,
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
			"gameId": 55,
			"teamLeaguePlayerId": 94,
			"bO": 10,
			"pA": 4,
			"r": 4,
			"rBI": 4,
			"b1": 3,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 55,
			"teamLeaguePlayerId": 89,
			"bO": 11,
			"pA": 4,
			"r": 4,
			"rBI": 3,
			"b1": 1,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
	{
	    "date": "2022-05-27 18:30:00" ,
	    "opponent": "Misfits",
	    "score": 29,
	    "opponentScore": 5,
	    "field": "Vietnam Vets #1",
	    "wasHome": 0,
	    "teamLeagueId": 15
	}
		{
			"gameId": 56,
			"teamLeaguePlayerId": 91,
			"bO": 1,
			"pA": 6,
			"r": 3,
			"rBI": 2,
			"b1": 3,
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
			"gameId": 56,
			"teamLeaguePlayerId": 83,
			"bO": 2,
			"pA": 6,
			"r": 2,
			"rBI": 6,
			"b1": 0,
			"b2": 2,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 56,
			"teamLeaguePlayerId": 80,
			"bO": 3,
			"pA": 6,
			"r": 3,
			"rBI": 0,
			"b1": 3,
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
			"gameId": 56,
			"teamLeaguePlayerId": 81,
			"bO": 4,
			"pA": 6,
			"r": 3,
			"rBI": 2,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 2,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 56,
			"teamLeaguePlayerId": 84,
			"bO": 5,
			"pA": 6,
			"r": 4,
			"rBI": 3,
			"b1": 2,
			"b2": 1,
			"b3": 1,
			"hR": 0,
			"bB": 0,
			"sO": 0,
			"sAC": 1,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 56,
			"teamLeaguePlayerId": 87,
			"bO": 6,
			"pA": 5,
			"r": 5,
			"rBI": 2,
			"b1": 2,
			"b2": 1,
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
			"gameId": 56,
			"teamLeaguePlayerId": 86,
			"bO": 7,
			"pA": 5,
			"r": 2,
			"rBI": 4,
			"b1": 0,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 1,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 56,
			"teamLeaguePlayerId": 85,
			"bO": 8,
			"pA": 5,
			"r": 3,
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
			"gameId": 56,
			"teamLeaguePlayerId": 89,
			"bO": 9,
			"pA": 5,
			"r": 3,
			"rBI": 4,
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
			"gameId": 56,
			"teamLeaguePlayerId": 93,
			"bO": 10,
			"pA": 5,
			"r": 1,
			"rBI": 3,
			"b1": 1,
			"b2": 1,
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

-- SBRef.com Fall 2023
	{
	    "date": "2022-09-20 18:30:00" ,
	    "opponent": "Brew Crew",
	    "score": 29,
	    "opponentScore": 10,
	    "field": "Vietnam Vets #1",
	    "wasHome": 0,
	    "teamLeagueId": 16
	}
		{
			"gameId": 69,
			"teamLeaguePlayerId": 108,
			"bO": 1,
			"pA": 4,
			"r": 2,
			"rBI": 1,
			"b1": 1,
			"b2": 1,
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
			"gameId": 69,
			"teamLeaguePlayerId": 102,
			"bO": 2,
			"pA": 4,
			"r": 4,
			"rBI": 3,
			"b1": 2,
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
			"gameId": 69,
			"teamLeaguePlayerId": 98,
			"bO": 3,
			"pA": 4,
			"r": 3,
			"rBI": 1,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 69,
			"teamLeaguePlayerId": 97,
			"bO": 4,
			"pA": 4,
			"r": 3,
			"rBI": 4,
			"b1": 1,
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
			"gameId": 69,
			"teamLeaguePlayerId": 105,
			"bO": 5,
			"pA": 4,
			"r": 4,
			"rBI": 3,
			"b1": 1,
			"b2": 1,
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
			"gameId": 69,
			"teamLeaguePlayerId": 110,
			"bO": 6,
			"pA": 4,
			"r": 4,
			"rBI": 5,
			"b1": 1,
			"b2": 1,
			"b3": 1,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 69,
			"teamLeaguePlayerId": 99,
			"bO": 7,
			"pA": 4,
			"r": 1,
			"rBI": 2,
			"b1": 1,
			"b2": 1,
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
			"gameId": 69,
			"teamLeaguePlayerId": 101,
			"bO": 8,
			"pA": 4,
			"r": 1,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 69,
			"teamLeaguePlayerId": 109,
			"bO": 9,
			"pA": 4,
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
			"gameId": 69,
			"teamLeaguePlayerId": 104,
			"bO": 10,
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
			"gameId": 69,
			"teamLeaguePlayerId": 103,
			"bO": 11,
			"pA": 3,
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
			"gameId": 69,
			"teamLeaguePlayerId": 100,
			"bO": 12,
			"pA": 3,
			"r": 1,
			"rBI": 0,
			"b1": 1,
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
			"gameId": 69,
			"teamLeaguePlayerId": 107,
			"bO": 13,
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
	    "date": "2022-09-20 20:30:00" ,
	    "opponent": "Icemen",
	    "score": 17,
	    "opponentScore": 14,
	    "field": "Vietnam Vets #1",
	    "wasHome": 0,
	    "teamLeagueId": 16
	}
		{
			"gameId": 70,
			"teamLeaguePlayerId": 108,
			"bO": 1,
			"pA": 4,
			"r": 3,
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
			"gameId": 70,
			"teamLeaguePlayerId": 102,
			"bO": 2,
			"pA": 4,
			"r": 1,
			"rBI": 4,
			"b1": 0,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 1,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 70,
			"teamLeaguePlayerId": 98,
			"bO": 3,
			"pA": 4,
			"r": 4,
			"rBI": 1,
			"b1": 1,
			"b2": 2,
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
			"gameId": 70,
			"teamLeaguePlayerId": 97,
			"bO": 4,
			"pA": 4,
			"r": 2,
			"rBI": 2,
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
			"gameId": 70,
			"teamLeaguePlayerId": 105,
			"bO": 5,
			"pA": 4,
			"r": 0,
			"rBI": 2,
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
			"gameId": 70,
			"teamLeaguePlayerId": 110,
			"bO": 6,
			"pA": 4,
			"r": 2,
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
			"gameId": 70,
			"teamLeaguePlayerId": 99,
			"bO": 7,
			"pA": 3,
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
			"gameId": 70,
			"teamLeaguePlayerId": 101,
			"bO": 8,
			"pA": 3,
			"r": 1,
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
			"gameId": 70,
			"teamLeaguePlayerId": 109,
			"bO": 9,
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
			"gameId": 70,
			"teamLeaguePlayerId": 103,
			"bO": 10,
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
			"gameId": 70,
			"teamLeaguePlayerId": 100,
			"bO": 11,
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
			"gameId": 70,
			"teamLeaguePlayerId": 107,
			"bO": 12,
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
	    "date": "2022-09-27 18:30:00" ,
	    "opponent": "Prince of Peace",
	    "score": 2,
	    "opponentScore": 15,
	    "field": "Tingley #2",
	    "wasHome": 0,
	    "teamLeagueId": 16
	}
		{
			"gameId": 71,
			"teamLeaguePlayerId": 108,
			"bO": 1,
			"pA": 2,
			"r": 1,
			"rBI": 0,
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
			"gameId": 71,
			"teamLeaguePlayerId": 102,
			"bO": 2,
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
			"gameId": 71,
			"teamLeaguePlayerId": 97,
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
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 71,
			"teamLeaguePlayerId": 105,
			"bO": 4,
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
			"gameId": 71,
			"teamLeaguePlayerId": 99,
			"bO": 5,
			"pA": 2,
			"r": 1,
			"rBI": 0,
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
			"gameId": 71,
			"teamLeaguePlayerId": 106,
			"bO": 6,
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
			"gameId": 71,
			"teamLeaguePlayerId": 101,
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
			"gameId": 71,
			"teamLeaguePlayerId": 104,
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
			"gameId": 71,
			"teamLeaguePlayerId": 100,
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
			"gameId": 71,
			"teamLeaguePlayerId": 107,
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
			"gameId": 71,
			"teamLeaguePlayerId": 110,
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
			"gameId": 71,
			"teamLeaguePlayerId": 109,
			"bO": 12,
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
	    "date": "2022-09-27 20:30:00" ,
	    "opponent": "Where My Pitches At?",
	    "score": 22,
	    "opponentScore": 21,
	    "field": "Tingley #1",
	    "wasHome": 1,
	    "teamLeagueId": 16
	}
		{
			"gameId": 72,
			"teamLeaguePlayerId": 110,
			"bO": 1,
			"pA": 4,
			"r": 3,
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
			"gameId": 72,
			"teamLeaguePlayerId": 109,
			"bO": 2,
			"pA": 4,
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
			"gameId": 72,
			"teamLeaguePlayerId": 108,
			"bO": 3,
			"pA": 4,
			"r": 3,
			"rBI": 3,
			"b1": 0,
			"b2": 0,
			"b3": 1,
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
			"gameId": 72,
			"teamLeaguePlayerId": 102,
			"bO": 4,
			"pA": 4,
			"r": 2,
			"rBI": 4,
			"b1": 2,
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
			"gameId": 72,
			"teamLeaguePlayerId": 97,
			"bO": 5,
			"pA": 4,
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
			"gameId": 72,
			"teamLeaguePlayerId": 105,
			"bO": 6,
			"pA": 4,
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
			"gameId": 72,
			"teamLeaguePlayerId": 99,
			"bO": 7,
			"pA": 4,
			"r": 2,
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
			"gameId": 72,
			"teamLeaguePlayerId": 101,
			"bO": 8,
			"pA": 4,
			"r": 2,
			"rBI": 2,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 0,
			"sO": 1,
			"sAC": 1,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 72,
			"teamLeaguePlayerId": 104,
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
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 72,
			"teamLeaguePlayerId": 100,
			"bO": 10,
			"pA": 4,
			"r": 2,
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
			"gameId": 72,
			"teamLeaguePlayerId": 107,
			"bO": 11,
			"pA": 4,
			"r": 1,
			"rBI": 1,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 1,
			"sO": 1,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
	{
	    "date": "2022-10-04 19:30:00" ,
	    "opponent": "Brew Crew",
	    "score": 13,
	    "opponentScore": 2,
	    "field": "Bullhead #3",
	    "wasHome": 1,
	    "teamLeagueId": 16
	}
		{
			"gameId": 73,
			"teamLeaguePlayerId": 108,
			"bO": 1,
			"pA": 3,
			"r": 2,
			"rBI": 2,
			"b1": 1,
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
			"gameId": 73,
			"teamLeaguePlayerId": 102,
			"bO": 2,
			"pA": 3,
			"r": 2,
			"rBI": 3,
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
			"gameId": 73,
			"teamLeaguePlayerId": 98,
			"bO": 3,
			"pA": 3,
			"r": 3,
			"rBI": 1,
			"b1": 1,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 73,
			"teamLeaguePlayerId": 97,
			"bO": 4,
			"pA": 3,
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
			"gameId": 73,
			"teamLeaguePlayerId": 105,
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
			"gameId": 73,
			"teamLeaguePlayerId": 110,
			"bO": 6,
			"pA": 3,
			"r": 1,
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
			"gameId": 73,
			"teamLeaguePlayerId": 99,
			"bO": 7,
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
			"gameId": 73,
			"teamLeaguePlayerId": 101,
			"bO": 8,
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
			"gameId": 73,
			"teamLeaguePlayerId": 109,
			"bO": 9,
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
			"gameId": 73,
			"teamLeaguePlayerId": 103,
			"bO": 10,
			"pA": 2,
			"r": 1,
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
			"gameId": 73,
			"teamLeaguePlayerId": 104,
			"bO": 11,
			"pA": 2,
			"r": 1,
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
			"gameId": 73,
			"teamLeaguePlayerId": 107,
			"bO": 12,
			"pA": 2,
			"r": 1,
			"rBI": 0,
			"b1": 0,
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
			"gameId": 73,
			"teamLeaguePlayerId": 100,
			"bO": 13,
			"pA": 2,
			"r": 1,
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
	    "date": "2022-10-04 20:30:00" ,
	    "opponent": "505 Renegades",
	    "score": 26,
	    "opponentScore": 22,
	    "field": "Bullhead #3",
	    "wasHome": 1,
	    "teamLeagueId": 16
	}
		{
			"gameId": 74,
			"teamLeaguePlayerId": 108,
			"bO": 1,
			"pA": 5,
			"r": 2,
			"rBI": 0,
			"b1": 1,
			"b2": 1,
			"b3": 0,
			"hR": 0,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 2,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 74,
			"teamLeaguePlayerId": 102,
			"bO": 2,
			"pA": 4,
			"r": 2,
			"rBI": 4,
			"b1": 1,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 74,
			"teamLeaguePlayerId": 98,
			"bO": 3,
			"pA": 4,
			"r": 2,
			"rBI": 1,
			"b1": 3,
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
			"gameId": 74,
			"teamLeaguePlayerId": 97,
			"bO": 4,
			"pA": 4,
			"r": 2,
			"rBI": 0,
			"b1": 0,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 2,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 74,
			"teamLeaguePlayerId": 105,
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
			"gameId": 74,
			"teamLeaguePlayerId": 110,
			"bO": 6,
			"pA": 4,
			"r": 3,
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
			"gameId": 74,
			"teamLeaguePlayerId": 99,
			"bO": 7,
			"pA": 4,
			"r": 3,
			"rBI": 4,
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
			"gameId": 74,
			"teamLeaguePlayerId": 101,
			"bO": 8,
			"pA": 4,
			"r": 3,
			"rBI": 3,
			"b1": 2,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 74,
			"teamLeaguePlayerId": 109,
			"bO": 9,
			"pA": 4,
			"r": 3,
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
			"gameId": 74,
			"teamLeaguePlayerId": 103,
			"bO": 10,
			"pA": 4,
			"r": 2,
			"rBI": 0,
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
			"gameId": 74,
			"teamLeaguePlayerId": 104,
			"bO": 11,
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
			"gameId": 74,
			"teamLeaguePlayerId": 107,
			"bO": 12,
			"pA": 4,
			"r": 2,
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
			"gameId": 74,
			"teamLeaguePlayerId": 100,
			"bO": 13,
			"pA": 4,
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
			"gIDP": 1,
			"lOB": 0
		}
	{
	    "date": "2022-10-11 18:30:00" ,
	    "opponent": "Icemen",
	    "score": 19,
	    "opponentScore": 9,
	    "field": "Tingley #2",
	    "wasHome": 1,
	    "teamLeagueId": 16
	}
		{
			"gameId": 75,
			"teamLeaguePlayerId": 108,
			"bO": 1,
			"pA": 5,
			"r": 2,
			"rBI": 2,
			"b1": 1,
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
			"gameId": 75,
			"teamLeaguePlayerId": 102,
			"bO": 2,
			"pA": 5,
			"r": 1,
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
			"gameId": 75,
			"teamLeaguePlayerId": 97,
			"bO": 3,
			"pA": 5,
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
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 75,
			"teamLeaguePlayerId": 105,
			"bO": 4,
			"pA": 5,
			"r": 3,
			"rBI": 2,
			"b1": 2,
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
			"gameId": 75,
			"teamLeaguePlayerId": 110,
			"bO": 5,
			"pA": 5,
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
			"gameId": 75,
			"teamLeaguePlayerId": 99,
			"bO": 6,
			"pA": 5,
			"r": 3,
			"rBI": 2,
			"b1": 5,
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
			"gameId": 75,
			"teamLeaguePlayerId": 101,
			"bO": 7,
			"pA": 5,
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
			"gameId": 75,
			"teamLeaguePlayerId": 103,
			"bO": 8,
			"pA": 4,
			"r": 2,
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
			"gameId": 75,
			"teamLeaguePlayerId": 104,
			"bO": 9,
			"pA": 4,
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
			"gameId": 75,
			"teamLeaguePlayerId": 100,
			"bO": 10,
			"pA": 4,
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
	    "date": "2022-10-11 20:30:00" ,
	    "opponent": "Where My Pitches At?",
	    "score": 26,
	    "opponentScore": 9,
	    "field": "Tingley #1",
	    "wasHome": 1,
	    "teamLeagueId": 16
	}
		{
			"gameId": 76,
			"teamLeaguePlayerId": 108,
			"bO": 1,
			"pA": 5,
			"r": 3,
			"rBI": 3,
			"b1": 5,
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
			"gameId": 76,
			"teamLeaguePlayerId": 102,
			"bO": 2,
			"pA": 5,
			"r": 2,
			"rBI": 2,
			"b1": 3,
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
			"gameId": 76,
			"teamLeaguePlayerId": 97,
			"bO": 3,
			"pA": 5,
			"r": 3,
			"rBI": 2,
			"b1": 1,
			"b2": 2,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 1,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 76,
			"teamLeaguePlayerId": 105,
			"bO": 4,
			"pA": 4,
			"r": 3,
			"rBI": 2,
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
			"gameId": 76,
			"teamLeaguePlayerId": 110,
			"bO": 5,
			"pA": 4,
			"r": 3,
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
			"gameId": 76,
			"teamLeaguePlayerId": 99,
			"bO": 6,
			"pA": 4,
			"r": 3,
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
			"gameId": 76,
			"teamLeaguePlayerId": 101,
			"bO": 7,
			"pA": 4,
			"r": 2,
			"rBI": 5,
			"b1": 1,
			"b2": 0,
			"b3": 1,
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
			"gameId": 76,
			"teamLeaguePlayerId": 103,
			"bO": 8,
			"pA": 4,
			"r": 1,
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
			"gameId": 76,
			"teamLeaguePlayerId": 104,
			"bO": 9,
			"pA": 4,
			"r": 3,
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
			"gameId": 76,
			"teamLeaguePlayerId": 100,
			"bO": 10,
			"pA": 4,
			"r": 3,
			"rBI": 0,
			"b1": 3,
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

-- SBRef.com Spring 2023
	{
	    "date": "2023-03-14 18:30:00" ,
	    "opponent": "Bad News Beers",
	    "score": 9,
	    "opponentScore": 7,
	    "field": "Barelas #3",
	    "wasHome": 1,
	    "teamLeagueId": 17
	}
		{
			"gameId": 77,
			"teamLeaguePlayerId": 119,
			"bO": 1,
			"pA": 4,
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
			"gameId": 77,
			"teamLeaguePlayerId": 116,
			"bO": 2,
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
			"gameId": 77,
			"teamLeaguePlayerId": 111,
			"bO": 3,
			"pA": 4,
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
			"gameId": 77,
			"teamLeaguePlayerId": 124,
			"bO": 4,
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
			"gameId": 77,
			"teamLeaguePlayerId": 123,
			"bO": 5,
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
			"gameId": 77,
			"teamLeaguePlayerId": 113,
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
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 77,
			"teamLeaguePlayerId": 115,
			"bO": 7,
			"pA": 3,
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
			"gameId": 77,
			"teamLeaguePlayerId": 117,
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
			"gameId": 77,
			"teamLeaguePlayerId": 125,
			"bO": 9,
			"pA": 3,
			"r": 0,
			"rBI": 2,
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
			"gameId": 77,
			"teamLeaguePlayerId": 118,
			"bO": 10,
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
			"gameId": 77,
			"teamLeaguePlayerId": 114,
			"bO": 11,
			"pA": 3,
			"r": 0,
			"rBI": 1,
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
	    "date": "2023-03-14 19:30:00" ,
	    "opponent": "Old and Slow",
	    "score": 27,
	    "opponentScore": 6,
	    "field": "Barelas #3",
	    "wasHome": 0,
	    "teamLeagueId": 17
	}
		{
			"gameId": 78,
			"teamLeaguePlayerId": 119,
			"bO": 1,
			"pA": 6,
			"r": 4,
			"rBI": 0,
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
			"gameId": 78,
			"teamLeaguePlayerId": 116,
			"bO": 2,
			"pA": 5,
			"r": 4,
			"rBI": 3,
			"b1": 3,
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
			"gameId": 78,
			"teamLeaguePlayerId": 111,
			"bO": 3,
			"pA": 5,
			"r": 4,
			"rBI": 5,
			"b1": 2,
			"b2": 0,
			"b3": 1,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 78,
			"teamLeaguePlayerId": 124,
			"bO": 4,
			"pA": 5,
			"r": 3,
			"rBI": 4,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 1,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 78,
			"teamLeaguePlayerId": 123,
			"bO": 5,
			"pA": 5,
			"r": 2,
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
			"gameId": 78,
			"teamLeaguePlayerId": 115,
			"bO": 6,
			"pA": 5,
			"r": 3,
			"rBI": 3,
			"b1": 3,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 78,
			"teamLeaguePlayerId": 117,
			"bO": 7,
			"pA": 5,
			"r": 1,
			"rBI": 1,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 78,
			"teamLeaguePlayerId": 125,
			"bO": 8,
			"pA": 5,
			"r": 2,
			"rBI": 4,
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
			"gameId": 78,
			"teamLeaguePlayerId": 118,
			"bO": 9,
			"pA": 5,
			"r": 1,
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
			"gameId": 78,
			"teamLeaguePlayerId": 114,
			"bO": 10,
			"pA": 5,
			"r": 3,
			"rBI": 1,
			"b1": 4,
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
	    "date": "2023-03-28 19:30:00" ,
	    "opponent": "Ash",
	    "score": 11,
	    "opponentScore": 28,
	    "field": "Barelas #3",
	    "wasHome": 1,
	    "teamLeagueId": 17
	}
		{
			"gameId": 79,
			"teamLeaguePlayerId": 119,
			"bO": 1,
			"pA": 4,
			"r": 3,
			"rBI": 2,
			"b1": 1,
			"b2": 1,
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
			"gameId": 79,
			"teamLeaguePlayerId": 123,
			"bO": 2,
			"pA": 4,
			"r": 2,
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
			"gameId": 79,
			"teamLeaguePlayerId": 111,
			"bO": 3,
			"pA": 4,
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
			"gameId": 79,
			"teamLeaguePlayerId": 115,
			"bO": 4,
			"pA": 4,
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
			"gameId": 79,
			"teamLeaguePlayerId": 113,
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
			"gameId": 79,
			"teamLeaguePlayerId": 117,
			"bO": 6,
			"pA": 3,
			"r": 1,
			"rBI": 0,
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
			"gameId": 79,
			"teamLeaguePlayerId": 125,
			"bO": 7,
			"pA": 3,
			"r": 1,
			"rBI": 1,
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
			"gameId": 79,
			"teamLeaguePlayerId": 118,
			"bO": 8,
			"pA": 3,
			"r": 1,
			"rBI": 3,
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
			"gameId": 79,
			"teamLeaguePlayerId": 114,
			"bO": 9,
			"pA": 3,
			"r": 0,
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
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 79,
			"teamLeaguePlayerId": 121,
			"bO": 10,
			"pA": 3,
			"r": 1,
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
	    "date": "2023-03-28 20:30:00" ,
	    "opponent": "Prince of Peace",
	    "score": 11,
	    "opponentScore": 19,
	    "field": "Barelas #3",
	    "wasHome": 0,
	    "teamLeagueId": 17
	}
		{
			"gameId": 80,
			"teamLeaguePlayerId": 119,
			"bO": 1,
			"pA": 4,
			"r": 2,
			"rBI": 4,
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
			"gameId": 80,
			"teamLeaguePlayerId": 123,
			"bO": 2,
			"pA": 4,
			"r": 2,
			"rBI": 1,
			"b1": 0,
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
			"gameId": 80,
			"teamLeaguePlayerId": 111,
			"bO": 3,
			"pA": 3,
			"r": 0,
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
			"gameId": 80,
			"teamLeaguePlayerId": 115,
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
			"gameId": 80,
			"teamLeaguePlayerId": 113,
			"bO": 5,
			"pA": 3,
			"r": 1,
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
			"gameId": 80,
			"teamLeaguePlayerId": 117,
			"bO": 6,
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
			"gameId": 80,
			"teamLeaguePlayerId": 125,
			"bO": 7,
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
			"gameId": 80,
			"teamLeaguePlayerId": 118,
			"bO": 8,
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
			"gameId": 80,
			"teamLeaguePlayerId": 114,
			"bO": 9,
			"pA": 3,
			"r": 2,
			"rBI": 0,
			"b1": 0,
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
			"gameId": 80,
			"teamLeaguePlayerId": 121,
			"bO": 10,
			"pA": 3,
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
	    "date": "2023-04-03 18:30:00" ,
	    "opponent": "Icemen",
	    "score": 5,
	    "opponentScore": 6,
	    "field": "Tingley #2",
	    "wasHome": 0,
	    "teamLeagueId": 17
	}
		{
			"gameId": 81,
			"teamLeaguePlayerId": 116,
			"bO": 1,
			"pA": 2,
			"r": 1,
			"rBI": 0,
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
			"gameId": 81,
			"teamLeaguePlayerId": 119,
			"bO": 2,
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
			"gameId": 81,
			"teamLeaguePlayerId": 123,
			"bO": 3,
			"pA": 2,
			"r": 1,
			"rBI": 1,
			"b1": 0,
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
			"gameId": 81,
			"teamLeaguePlayerId": 124,
			"bO": 4,
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
			"gameId": 81,
			"teamLeaguePlayerId": 115,
			"bO": 5,
			"pA": 1,
			"r": 1,
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
			"gameId": 81,
			"teamLeaguePlayerId": 113,
			"bO": 6,
			"pA": 1,
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
			"gameId": 81,
			"teamLeaguePlayerId": 117,
			"bO": 7,
			"pA": 1,
			"r": 1,
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
			"gameId": 81,
			"teamLeaguePlayerId": 118,
			"bO": 8,
			"pA": 1,
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
			"gameId": 81,
			"teamLeaguePlayerId": 114,
			"bO": 9,
			"pA": 1,
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
			"gameId": 81,
			"teamLeaguePlayerId": 121,
			"bO": 10,
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
	    "date": "2023-04-03 20:30:00" ,
	    "opponent": "Lizards",
	    "score": 6,
	    "opponentScore": 34,
	    "field": "Tingley #2",
	    "wasHome": 1,
	    "teamLeagueId": 17
	}
		{
			"gameId": 82,
			"teamLeaguePlayerId": 116,
			"bO": 1,
			"pA": 3,
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
			"gameId": 82,
			"teamLeaguePlayerId": 119,
			"bO": 2,
			"pA": 3,
			"r": 1,
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
			"gameId": 82,
			"teamLeaguePlayerId": 123,
			"bO": 3,
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
			"gameId": 82,
			"teamLeaguePlayerId": 124,
			"bO": 4,
			"pA": 3,
			"r": 2,
			"rBI": 1,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 82,
			"teamLeaguePlayerId": 115,
			"bO": 5,
			"pA": 2,
			"r": 1,
			"rBI": 1,
			"b1": 0,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 82,
			"teamLeaguePlayerId": 113,
			"bO": 6,
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
			"gameId": 82,
			"teamLeaguePlayerId": 117,
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
			"gameId": 82,
			"teamLeaguePlayerId": 118,
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
			"gameId": 82,
			"teamLeaguePlayerId": 114,
			"bO": 9,
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
			"gameId": 82,
			"teamLeaguePlayerId": 121,
			"bO": 10,
			"pA": 2,
			"r": 1,
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
	    "date": "2023-04-04 18:30:00" ,
	    "opponent": "ABQ Guns",
	    "score": 0,
	    "opponentScore": 14,
	    "field": "Barelas #2",
	    "wasHome": 1,
	    "teamLeagueId": 17
	}
		{
			"gameId": 83,
			"teamLeaguePlayerId": 116,
			"bO": 1,
			"pA": 2,
			"r": 0,
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
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 83,
			"teamLeaguePlayerId": 123,
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
			"gameId": 83,
			"teamLeaguePlayerId": 124,
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
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 83,
			"teamLeaguePlayerId": 111,
			"bO": 4,
			"pA": 2,
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
			"gameId": 83,
			"teamLeaguePlayerId": 115,
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
			"gameId": 83,
			"teamLeaguePlayerId": 113,
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
			"gameId": 83,
			"teamLeaguePlayerId": 117,
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
			"gameId": 83,
			"teamLeaguePlayerId": 125,
			"bO": 8,
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
			"gameId": 83,
			"teamLeaguePlayerId": 118,
			"bO": 9,
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
			"gameId": 83,
			"teamLeaguePlayerId": 114,
			"bO": 10,
			"pA": 1,
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
			"gameId": 83,
			"teamLeaguePlayerId": 121,
			"bO": 11,
			"pA": 1,
			"r": 0,
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
			"gIDP": 0,
			"lOB": 0
		}
	{
	    "date": "2023-04-04 20:30:00" ,
	    "opponent": "Duke City Hooligans",
	    "score": 13,
	    "opponentScore": 20,
	    "field": "Barelas #3",
	    "wasHome": 0,
	    "teamLeagueId": 17
	}
		{
			"gameId": 84,
			"teamLeaguePlayerId": 116,
			"bO": 1,
			"pA": 3,
			"r": 2,
			"rBI": 2,
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
			"gameId": 84,
			"teamLeaguePlayerId": 123,
			"bO": 2,
			"pA": 3,
			"r": 2,
			"rBI": 3,
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
			"gameId": 84,
			"teamLeaguePlayerId": 124,
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
			"gameId": 84,
			"teamLeaguePlayerId": 111,
			"bO": 4,
			"pA": 3,
			"r": 1,
			"rBI": 3,
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
			"gameId": 84,
			"teamLeaguePlayerId": 115,
			"bO": 5,
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
			"gameId": 84,
			"teamLeaguePlayerId": 113,
			"bO": 6,
			"pA": 3,
			"r": 0,
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
			"gameId": 84,
			"teamLeaguePlayerId": 117,
			"bO": 7,
			"pA": 3,
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
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 84,
			"teamLeaguePlayerId": 125,
			"bO": 8,
			"pA": 3,
			"r": 1,
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
			"gameId": 84,
			"teamLeaguePlayerId": 118,
			"bO": 9,
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
			"gameId": 84,
			"teamLeaguePlayerId": 114,
			"bO": 10,
			"pA": 2,
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
			"gameId": 84,
			"teamLeaguePlayerId": 121,
			"bO": 11,
			"pA": 2,
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

-- SBRef.com Summer 2023
	{
	    "date": "2023-04-18 18:30:00" ,
	    "opponent": "Stormrage",
	    "score": 12,
	    "opponentScore": 3,
	    "field": "Vietnam Vets #2",
	    "wasHome": 1,
	    "teamLeagueId": 18
	}
		{
			"gameId": 87,
			"teamLeaguePlayerId": 130,
			"bO": 1,
			"pA": 4,
			"r": 2,
			"rBI": 0,
			"b1": 3,
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
			"gameId": 87,
			"teamLeaguePlayerId": 131,
			"bO": 2,
			"pA": 4,
			"r": 2,
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
			"gameId": 87,
			"teamLeaguePlayerId": 126,
			"bO": 3,
			"pA": 4,
			"r": 2,
			"rBI": 2,
			"b1": 3,
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
			"gameId": 87,
			"teamLeaguePlayerId": 134,
			"bO": 4,
			"pA": 4,
			"r": 0,
			"rBI": 3,
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
			"gameId": 87,
			"teamLeaguePlayerId": 139,
			"bO": 5,
			"pA": 4,
			"r": 2,
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
			"gameId": 87,
			"teamLeaguePlayerId": 132,
			"bO": 6,
			"pA": 3,
			"r": 0,
			"rBI": 1,
			"b1": 0,
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
			"gameId": 87,
			"teamLeaguePlayerId": 128,
			"bO": 7,
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
			"gameId": 87,
			"teamLeaguePlayerId": 133,
			"bO": 8,
			"pA": 3,
			"r": 1,
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
			"gameId": 87,
			"teamLeaguePlayerId": 138,
			"bO": 9,
			"pA": 3,
			"r": 1,
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
			"gameId": 87,
			"teamLeaguePlayerId": 129,
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
			"fO": 0,
			"gIDP": 1,
			"lOB": 0
		}
		{
			"gameId": 87,
			"teamLeaguePlayerId": 136,
			"bO": 11,
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
	    "date": "2023-04-25 19:30:00" ,
	    "opponent": "Icemen",
	    "score": 6,
	    "opponentScore": 24,
	    "field": "Tingley #1",
	    "wasHome": 0,
	    "teamLeagueId": 18
	}
		{
			"gameId": 85,
			"teamLeaguePlayerId": 130,
			"bO": 1,
			"pA": 3,
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
			"gameId": 85,
			"teamLeaguePlayerId": 134,
			"bO": 2,
			"pA": 3,
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
			"gameId": 85,
			"teamLeaguePlayerId": 126,
			"bO": 3,
			"pA": 2,
			"r": 2,
			"rBI": 3,
			"b1": 0,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 85,
			"teamLeaguePlayerId": 139,
			"bO": 4,
			"pA": 2,
			"r": 1,
			"rBI": 1,
			"b1": 0,
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
			"gameId": 85,
			"teamLeaguePlayerId": 131,
			"bO": 5,
			"pA": 2,
			"r": 0,
			"rBI": 1,
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
			"gameId": 85,
			"teamLeaguePlayerId": 138,
			"bO": 6,
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
			"gameId": 85,
			"teamLeaguePlayerId": 132,
			"bO": 7,
			"pA": 2,
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
			"gameId": 85,
			"teamLeaguePlayerId": 128,
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
			"gameId": 85,
			"teamLeaguePlayerId": 133,
			"bO": 9,
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
			"gameId": 85,
			"teamLeaguePlayerId": 129,
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
			"gameId": 85,
			"teamLeaguePlayerId": 141,
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
	    "date": "2023-05-02 19:30:00" ,
	    "opponent": "Duke City Hooligans",
	    "score": 22,
	    "opponentScore": 25,
	    "field": "Vietnam Vets #2",
	    "wasHome": 1,
	    "teamLeagueId": 18
	}
		{
			"gameId": 86,
			"teamLeaguePlayerId": 130,
			"bO": 1,
			"pA": 4,
			"r": 2,
			"rBI": 3,
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
			"gameId": 86,
			"teamLeaguePlayerId": 131,
			"bO": 2,
			"pA": 4,
			"r": 2,
			"rBI": 0,
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
			"gameId": 86,
			"teamLeaguePlayerId": 126,
			"bO": 3,
			"pA": 4,
			"r": 2,
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
			"gameId": 86,
			"teamLeaguePlayerId": 139,
			"bO": 4,
			"pA": 4,
			"r": 2,
			"rBI": 4,
			"b1": 3,
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
			"gameId": 86,
			"teamLeaguePlayerId": 138,
			"bO": 5,
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
			"gameId": 86,
			"teamLeaguePlayerId": 132,
			"bO": 6,
			"pA": 4,
			"r": 2,
			"rBI": 1,
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
			"gameId": 86,
			"teamLeaguePlayerId": 128,
			"bO": 7,
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
			"gameId": 86,
			"teamLeaguePlayerId": 133,
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
			"gameId": 86,
			"teamLeaguePlayerId": 142,
			"bO": 9,
			"pA": 3,
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
			"gameId": 86,
			"teamLeaguePlayerId": 129,
			"bO": 10,
			"pA": 3,
			"r": 1,
			"rBI": 3,
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
			"gameId": 86,
			"teamLeaguePlayerId": 136,
			"bO": 11,
			"pA": 3,
			"r": 2,
			"rBI": 4,
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
	    "date": "2023-05-09 20:30:00" ,
	    "opponent": "Los Borachos",
	    "score": 9,
	    "opponentScore": 20,
	    "field": "Tingley #1",
	    "wasHome": 0,
	    "teamLeagueId": 18
	}
		{
			"gameId": 88,
			"teamLeaguePlayerId": 130,
			"bO": 1,
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
			"gameId": 88,
			"teamLeaguePlayerId": 131,
			"bO": 2,
			"pA": 4,
			"r": 1,
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
			"gameId": 88,
			"teamLeaguePlayerId": 126,
			"bO": 3,
			"pA": 4,
			"r": 2,
			"rBI": 3,
			"b1": 2,
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
			"gameId": 88,
			"teamLeaguePlayerId": 139,
			"bO": 4,
			"pA": 4,
			"r": 1,
			"rBI": 2,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 1,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 88,
			"teamLeaguePlayerId": 134,
			"bO": 5,
			"pA": 4,
			"r": 1,
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
			"gameId": 88,
			"teamLeaguePlayerId": 138,
			"bO": 6,
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
			"gameId": 88,
			"teamLeaguePlayerId": 132,
			"bO": 7,
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
			"gameId": 88,
			"teamLeaguePlayerId": 133,
			"bO": 8,
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
			"gameId": 88,
			"teamLeaguePlayerId": 136,
			"bO": 9,
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
			"gameId": 88,
			"teamLeaguePlayerId": 141,
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
	    "date": "2023-05-16 20:30:00" ,
	    "opponent": "ASM Crew",
	    "score": 13,
	    "opponentScore": 20,
	    "field": "Vietnam Vets #2",
	    "wasHome": 0,
	    "teamLeagueId": 18
	}
		{
			"gameId": 89,
			"teamLeaguePlayerId": 130,
			"bO": 1,
			"pA": 3,
			"r": 2,
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
			"gameId": 89,
			"teamLeaguePlayerId": 134,
			"bO": 2,
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
			"gameId": 89,
			"teamLeaguePlayerId": 126,
			"bO": 3,
			"pA": 3,
			"r": 1,
			"rBI": 3,
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
			"gameId": 89,
			"teamLeaguePlayerId": 139,
			"bO": 4,
			"pA": 3,
			"r": 2,
			"rBI": 3,
			"b1": 2,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 89,
			"teamLeaguePlayerId": 131,
			"bO": 5,
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
			"gameId": 89,
			"teamLeaguePlayerId": 138,
			"bO": 6,
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
			"gameId": 89,
			"teamLeaguePlayerId": 132,
			"bO": 7,
			"pA": 3,
			"r": 0,
			"rBI": 0,
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
			"gameId": 89,
			"teamLeaguePlayerId": 128,
			"bO": 8,
			"pA": 3,
			"r": 0,
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
			"gameId": 89,
			"teamLeaguePlayerId": 129,
			"bO": 9,
			"pA": 3,
			"r": 2,
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
			"gameId": 89,
			"teamLeaguePlayerId": 136,
			"bO": 10,
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
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 89,
			"teamLeaguePlayerId": 142,
			"bO": 11,
			"pA": 3,
			"r": 1,
			"rBI": 0,
			"b1": 1,
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
			"gameId": 89,
			"teamLeaguePlayerId": 141,
			"bO": 12,
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
	    "date": "2023-05-23 20:30:00" ,
	    "opponent": "Where My Pitches At?",
	    "score": 16,
	    "opponentScore": 13,
	    "field": "Tingley #2",
	    "wasHome": 1,
	    "teamLeagueId": 18
	}
		{
			"gameId": 90,
			"teamLeaguePlayerId": 130,
			"bO": 1,
			"pA": 4,
			"r": 3,
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
			"gameId": 90,
			"teamLeaguePlayerId": 128,
			"bO": 2,
			"pA": 4,
			"r": 4,
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
			"gameId": 90,
			"teamLeaguePlayerId": 126,
			"bO": 3,
			"pA": 4,
			"r": 3,
			"rBI": 4,
			"b1": 0,
			"b2": 2,
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
			"gameId": 90,
			"teamLeaguePlayerId": 139,
			"bO": 4,
			"pA": 4,
			"r": 2,
			"rBI": 5,
			"b1": 0,
			"b2": 1,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 1,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 90,
			"teamLeaguePlayerId": 138,
			"bO": 5,
			"pA": 4,
			"r": 1,
			"rBI": 1,
			"b1": 0,
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
			"gameId": 90,
			"teamLeaguePlayerId": 134,
			"bO": 6,
			"pA": 4,
			"r": 1,
			"rBI": 4,
			"b1": 1,
			"b2": 1,
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
			"gameId": 90,
			"teamLeaguePlayerId": 131,
			"bO": 7,
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
			"gameId": 90,
			"teamLeaguePlayerId": 132,
			"bO": 8,
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
			"gameId": 90,
			"teamLeaguePlayerId": 129,
			"bO": 9,
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
			"gameId": 90,
			"teamLeaguePlayerId": 133,
			"bO": 10,
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
			"gameId": 90,
			"teamLeaguePlayerId": 142,
			"bO": 11,
			"pA": 3,
			"r": 2,
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
	    "date": "2023-05-30 20:30:00" ,
	    "opponent": "ABQ Guns",
	    "score": 3,
	    "opponentScore": 13,
	    "field": "Vietnam Vets #1",
	    "wasHome": 1,
	    "teamLeagueId": 18
	}
		{
			"gameId": 91,
			"teamLeaguePlayerId": 130,
			"bO": 1,
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
			"gameId": 91,
			"teamLeaguePlayerId": 128,
			"bO": 2,
			"pA": 3,
			"r": 1,
			"rBI": 0,
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
			"gameId": 91,
			"teamLeaguePlayerId": 126,
			"bO": 3,
			"pA": 3,
			"r": 0,
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
			"gameId": 91,
			"teamLeaguePlayerId": 134,
			"bO": 4,
			"pA": 3,
			"r": 0,
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
			"gameId": 91,
			"teamLeaguePlayerId": 132,
			"bO": 5,
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
			"fO": 2,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 91,
			"teamLeaguePlayerId": 138,
			"bO": 6,
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
			"gameId": 91,
			"teamLeaguePlayerId": 141,
			"bO": 7,
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
			"gameId": 91,
			"teamLeaguePlayerId": 142,
			"bO": 8,
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
			"gameId": 91,
			"teamLeaguePlayerId": 129,
			"bO": 9,
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
			"gameId": 91,
			"teamLeaguePlayerId": 133,
			"bO": 10,
			"pA": 3,
			"r": 0,
			"rBI": 1,
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
			"gameId": 91,
			"teamLeaguePlayerId": 136,
			"bO": 11,
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
	    "date": "2023-06-06 20:30:00" ,
	    "opponent": "Los Ranchos",
	    "score": 11,
	    "opponentScore": 21,
	    "field": "Tingley #2",
	    "wasHome": 0,
	    "teamLeagueId": 18
	}
		{
			"gameId": 92,
			"teamLeaguePlayerId": 130,
			"bO": 1,
			"pA": 4,
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
			"gameId": 92,
			"teamLeaguePlayerId": 131,
			"bO": 2,
			"pA": 4,
			"r": 2,
			"rBI": 1,
			"b1": 0,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 3,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 92,
			"teamLeaguePlayerId": 126,
			"bO": 3,
			"pA": 4,
			"r": 3,
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
			"gameId": 92,
			"teamLeaguePlayerId": 139,
			"bO": 4,
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
			"gameId": 92,
			"teamLeaguePlayerId": 138,
			"bO": 5,
			"pA": 3,
			"r": 1,
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
			"gameId": 92,
			"teamLeaguePlayerId": 129,
			"bO": 6,
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
			"gameId": 92,
			"teamLeaguePlayerId": 133,
			"bO": 7,
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
			"gameId": 92,
			"teamLeaguePlayerId": 142,
			"bO": 8,
			"pA": 3,
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
			"gameId": 92,
			"teamLeaguePlayerId": 136,
			"bO": 9,
			"pA": 3,
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
	    "date": "2023-06-13 18:30:00" ,
	    "opponent": "Legends",
	    "score": 5,
	    "opponentScore": 14,
	    "field": "Vietnam Vets #1",
	    "wasHome": 0,
	    "teamLeagueId": 18
	}
		{
			"gameId": 93,
			"teamLeaguePlayerId": 130,
			"bO": 1,
			"pA": 3,
			"r": 1,
			"rBI": 1,
			"b1": 0,
			"b2": 0,
			"b3": 1,
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
			"gameId": 93,
			"teamLeaguePlayerId": 142,
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
			"gameId": 93,
			"teamLeaguePlayerId": 126,
			"bO": 3,
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
			"gameId": 93,
			"teamLeaguePlayerId": 128,
			"bO": 4,
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
			"gameId": 93,
			"teamLeaguePlayerId": 134,
			"bO": 5,
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
			"gameId": 93,
			"teamLeaguePlayerId": 139,
			"bO": 6,
			"pA": 2,
			"r": 2,
			"rBI": 0,
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
			"gameId": 93,
			"teamLeaguePlayerId": 129,
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
			"gameId": 93,
			"teamLeaguePlayerId": 133,
			"bO": 8,
			"pA": 2,
			"r": 0,
			"rBI": 2,
			"b1": 0,
			"b2": 0,
			"b3": 0,
			"hR": 0,
			"bB": 0,
			"sO": 0,
			"sAC": 2,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 93,
			"teamLeaguePlayerId": 138,
			"bO": 9,
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
			"gameId": 93,
			"teamLeaguePlayerId": 132,
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
			"gameId": 93,
			"teamLeaguePlayerId": 131,
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
			"gameId": 93,
			"teamLeaguePlayerId": 141,
			"bO": 12,
			"pA": 2,
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
	    "date": "2023-06-20 18:30:00" ,
	    "opponent": "Balls Deep",
	    "score": 7,
	    "opponentScore": 15,
	    "field": "Tingley #2",
	    "wasHome": 1,
	    "teamLeagueId": 18
	}
		{
			"gameId": 94,
			"teamLeaguePlayerId": 130,
			"bO": 1,
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
			"gameId": 94,
			"teamLeaguePlayerId": 142,
			"bO": 2,
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
			"gameId": 94,
			"teamLeaguePlayerId": 126,
			"bO": 3,
			"pA": 3,
			"r": 2,
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
			"gameId": 94,
			"teamLeaguePlayerId": 128,
			"bO": 4,
			"pA": 3,
			"r": 2,
			"rBI": 2,
			"b1": 0,
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
			"gameId": 94,
			"teamLeaguePlayerId": 134,
			"bO": 5,
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
			"gameId": 94,
			"teamLeaguePlayerId": 139,
			"bO": 6,
			"pA": 3,
			"r": 1,
			"rBI": 4,
			"b1": 1,
			"b2": 0,
			"b3": 0,
			"hR": 1,
			"bB": 0,
			"sO": 0,
			"sAC": 0,
			"hR4O": 0,
			"fO": 0,
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 94,
			"teamLeaguePlayerId": 129,
			"bO": 7,
			"pA": 3,
			"r": 0,
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
			"gIDP": 0,
			"lOB": 0
		}
		{
			"gameId": 94,
			"teamLeaguePlayerId": 133,
			"bO": 8,
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
			"gameId": 94,
			"teamLeaguePlayerId": 131,
			"bO": 9,
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
			"gameId": 94,
			"teamLeaguePlayerId": 138,
			"bO": 10,
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
			"gameId": 94,
			"teamLeaguePlayerId": 132,
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
			"gIDP": 1,
			"lOB": 0
		}
	{
	    "date": "2023-06-27 18:30:00" ,
	    "opponent": "Lizards",
	    "score": 16,
	    "opponentScore": 3,
	    "field": "Vietnam Vets #1",
	    "wasHome": 0,
	    "teamLeagueId": 18
	}
		{
			"gameId": 95,
			"teamLeaguePlayerId": 130,
			"bO": 1,
			"pA": 5,
			"r": 2,
			"rBI": 0,
			"b1": 0,
			"b2": 1,
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
			"gameId": 95,
			"teamLeaguePlayerId": 128,
			"bO": 2,
			"pA": 5,
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
			"gameId": 95,
			"teamLeaguePlayerId": 126,
			"bO": 3,
			"pA": 5,
			"r": 3,
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
			"gameId": 95,
			"teamLeaguePlayerId": 134,
			"bO": 4,
			"pA": 5,
			"r": 3,
			"rBI": 2,
			"b1": 5,
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
			"gameId": 95,
			"teamLeaguePlayerId": 131,
			"bO": 5,
			"pA": 5,
			"r": 1,
			"rBI": 2,
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
			"gameId": 95,
			"teamLeaguePlayerId": 139,
			"bO": 6,
			"pA": 5,
			"r": 1,
			"rBI": 4,
			"b1": 4,
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
			"gameId": 95,
			"teamLeaguePlayerId": 129,
			"bO": 7,
			"pA": 5,
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
			"gameId": 95,
			"teamLeaguePlayerId": 132,
			"bO": 8,
			"pA": 5,
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
			"gameId": 95,
			"teamLeaguePlayerId": 138,
			"bO": 9,
			"pA": 5,
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
			"gameId": 95,
			"teamLeaguePlayerId": 136,
			"bO": 10,
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
		{
			"gameId": ,
			"teamLeaguePlayerId": ,
			"bO": 11,
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
			"bO": 12,
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