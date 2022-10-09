package com.softballreference.softballreferenceapi.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softballreference.softballreferenceapi.exception.DuplicateRecordException;
import com.softballreference.softballreferenceapi.model.dao.GameDao;
import com.softballreference.softballreferenceapi.model.dao.LeagueDao;
import com.softballreference.softballreferenceapi.model.dao.StatLineDao;
import com.softballreference.softballreferenceapi.model.dao.TeamDao;
import com.softballreference.softballreferenceapi.model.dao.TeamLeagueDao;
import com.softballreference.softballreferenceapi.model.dao.TeamLeaguePlayerDao;
import com.softballreference.softballreferenceapi.model.entity.Game;
import com.softballreference.softballreferenceapi.model.entity.League;
import com.softballreference.softballreferenceapi.model.entity.Player;
import com.softballreference.softballreferenceapi.model.entity.StatLine;
import com.softballreference.softballreferenceapi.model.entity.Team;
import com.softballreference.softballreferenceapi.model.entity.TeamLeague;
import com.softballreference.softballreferenceapi.model.entity.TeamLeaguePlayer;
import com.softballreference.softballreferenceapi.model.entity.request_dto.GameRequest;
import com.softballreference.softballreferenceapi.model.entity.request_dto.StatLineRequest;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GamePostResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GameStatLineResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GameSummaryResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.LeagueBindResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.PlayerBindResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.StatLineResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.SummaryStatLineResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.TeamBindResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.TeamLeagueBindResponse;
import com.softballreference.softballreferenceapi.utils.ResponseAndEntityBuilder;

/**
 * This is the main Service class that will actually call the DAO @Repositories
 * methods.
 *
 * NOTE: The fact that this class is @Transactional means that any of the lazy
 * loading done with entities mapped to DAO @Repositories. Therefore, any access
 * of entity relationships will be done in a lazy-loaded fashion of called
 * within this class.
 */
@Service
@Transactional
public class RestService {

	/*
	 * Each one of these autowired repositories/dao give access to each of the
	 * Hibernate tables.
	 */

	@Autowired
	TeamDao teamDao;

	@Autowired
	LeagueDao leagueDao;

	@Autowired
	GameDao gameDao;

	@Autowired
	TeamLeaguePlayerDao teamLeaguePlayerDao;

	@Autowired
	TeamLeagueDao teamLeagueDao;

	@Autowired
	StatLineDao statLineDao;

	/*
	 * One-off dropdown populaters
	 */

	/**
	 * Returns a List of all the {@link Team} objects that exist in the
	 * {@link TeamDao} in the form of a {@link TeamBindResponse}
	 * wrapper. This should just be used to bind controls for what
	 * {@link Team}s exist. No relationships are populated in this response.
	 * 
	 * @return the {@link TeamBindResponse} objects that are associated with
	 *         the {@link Team}s in the {@code Team} table.
	 */
	public List<TeamBindResponse> getAllTeamsForBinding() {

		List<Team> teams = teamDao.findAll();

		List<TeamBindResponse> teamResponses = new ArrayList<TeamBindResponse>();

		teams.forEach(t -> teamResponses.add(ResponseAndEntityBuilder.buildTeamBindResponse(t)));

		return teamResponses;
	}

	/**
	 * Returns a List of all the {@link League} objects that exist in the
	 * {@link LeagueDao} in the form of a {@link LeagueBindResponse}
	 * wrapper. This should just be used to bind controls for what
	 * {@link League}s exist. No relationships are populated in this response.
	 * 
	 * @return the {@link LeagueBindResponse} objects that are associated with
	 *         the {@link League}s in the {@code League} table.
	 */
	public List<LeagueBindResponse> getAllLeaguesForBinding() {

		List<League> leagues = leagueDao.findAll();

		List<LeagueBindResponse> leagueResponses = new ArrayList<LeagueBindResponse>();

		leagues.forEach(l -> leagueResponses.add(ResponseAndEntityBuilder.buildLeagueBindResponse(l)));

		return leagueResponses;
	}

	/**
	 * Returns a boolean as to whether the {@link TeamLeague} exists by the passed
	 * in Id.
	 * 
	 * @param teamLeagueId the {@code Long} Id associated with the
	 *                     {@link TeamLeague} to check.
	 * @return {@code TRUE} if the {@link TeamLeague} exists, {@code FALSE}
	 *         otherwise.
	 */
	public boolean doesTeamLeagueExistById(Long teamLeagueId) {
		return teamLeagueDao.existsById(teamLeagueId);
	}

	/**
	 * Returns a List of all the {@link TeamLeague} objects that exist in the
	 * {@link TeamLeagueDao} in the form of a {@link TeamLeagueBindResponse}
	 * wrapper. This should just be used to bind controls for what
	 * {@link TeamLeague}s exist. No relationships are populated in this response.
	 * 
	 * @param team an {@code Optional} query param for the {@code team} of the
	 *             {@link TeamLeagueBindResponse} to match
	 * @return the {@link TeamLeagueBindResponse} objects that are associated with
	 *         the {@link TeamLeague}s in the {@code TeamLeague} table.
	 */
	public List<TeamLeagueBindResponse> getAllTeamLeaguesForBinding(Optional<String> team) {
		/*
		 * Example will look for an exaxt match on all non-null properties. Since a
		 * TeamLeague is actually an AT record, we'll have to create a Team object with
		 * the name passed in for it to match. You don't need the ID, just the name
		 * matching is good enough, surprisingly.
		 */
		TeamLeague probe = new TeamLeague();

		if (team.isPresent())
			probe.setTeam(new Team(team.get()));

		// Since we want the team.name to be case-insensitive on the match...
		List<TeamLeague> teamLeagues = teamLeagueDao
				.findAll(Example.of(probe, ExampleMatcher.matchingAll().withIgnoreCase()));

		List<TeamLeagueBindResponse> teamLeagueResponses = new ArrayList<TeamLeagueBindResponse>();

		teamLeagues.forEach(tL -> teamLeagueResponses.add(ResponseAndEntityBuilder.buildTeamLeagueBindResponse(tL)));

		return teamLeagueResponses;
	}

	/**
	 * Returns a List of all the {@link Game} objects of a {@link TeamLeague} that
	 * exist in the {@link GameDao} in the form of a {@link GameSummaryResponse}
	 * wrapper. This should just be used to bind controls for what {@link Game}s
	 * exist on a {@link TeamLeague}. No relationships are populated in this
	 * response.
	 * 
	 * @return the {@link GameSummaryResponse} objects that are associated with the
	 *         {@link TeamLeague}s in the {@code Game} table.
	 */
	public List<GameSummaryResponse> getGamesOfTeamLeagueByIdForBinding(Long teamLeagueId) {
		/*
		 * Example will look for an exact match on all non-null properties. Therefore, I
		 * want to find those Games that are associated with the passed in TeamLeagueId.
		 */
		Game probe = new Game();
		probe.setTeamLeague(new TeamLeague(teamLeagueId));

		List<Game> games = gameDao.findAll(Example.of(probe));

		// convert from entities into responses
		List<GameSummaryResponse> gameSummaryResponses = new ArrayList<GameSummaryResponse>();
		games.forEach(game -> gameSummaryResponses.add(ResponseAndEntityBuilder.buildGameSummaryResponse(game)));

		return gameSummaryResponses;
	}

	/**
	 * Returns a List of all the {@link Player} objects of a {@link TeamLeague} that
	 * exist in the {@link TeamLeaguePlayerDao} in the form of a
	 * {@link PlayerBindResponse} wrapper. This should just be used to bind controls
	 * for what {@link Players}s exist on a {@link TeamLeague}. No relationships are
	 * populated in this response.
	 * 
	 * @return the {@link PlayerBindResponse} objects that are associated with the
	 *         {@link TeamLeague}s in the {@code TeamLeaguePlayer} table.
	 */
	public List<PlayerBindResponse> getPlayersOfTeamLeagueByIdForBinding(Long teamLeagueId) {
		/*
		 * Example will look for an exact match on all non-null properties. Therefore, I
		 * want to find those TeamLeaguePlayers that are associated with the passed in
		 * TeamLeagueId.
		 */
		TeamLeaguePlayer probe = new TeamLeaguePlayer();
		probe.setTeamLeague(new TeamLeague(teamLeagueId));

		List<TeamLeaguePlayer> players = teamLeaguePlayerDao.findAll(Example.of(probe));

		// convert from entities into responses
		List<PlayerBindResponse> playerResponses = new ArrayList<PlayerBindResponse>();
		players.forEach(player -> playerResponses.add(ResponseAndEntityBuilder.buildPlayerBindResponse(player)));

		return playerResponses;
	}

	/*
	 * MAIN VIEW RESPONSE METHODS
	 */

	/**
	 * Fetches the single {@link TeamLeague} object associated with the passed in
	 * {@code teamLeagueId} and wrapped in a {@link SummaryStatLineResponse}.
	 * 
	 * @param teamLeagueId the {@code Long} Id associated with the
	 *                     {@link TeamLeague} to fetch.
	 * @return a {@link SummaryStatLineResponse} object built from the
	 *         {@link TeamLeague} entity associated with the {@code teamLeagueId},
	 *         or {@code null} if one doesn't exist in the db.
	 */
	public SummaryStatLineResponse getSummaryStatLineResponseByTeamLeagueId(Long teamLeagueId) {
		Optional<TeamLeague> teamLeagueOptional = teamLeagueDao.findById(teamLeagueId);

		if (teamLeagueOptional.isPresent())
			return ResponseAndEntityBuilder.buildSummaryStatLineResponse(teamLeagueOptional.get());
		else
			return null;
	}

	/**
	 * Fetches the single {@link Game} object associated with the passed in
	 * {@code gameId} and wrapped in a {@link GameStatLineResponse}.
	 * 
	 * @param gameId the {@code Long} Id associated with the {@link Game} to fetch.
	 * @return a {@link GameStatLineResponse} object built from the {@link Game}
	 *         entity associated with the {@code gameId}, or {@code null} if one
	 *         doesn't exist in the db.
	 */
	public GameStatLineResponse getGameStatLineResponseByGameId(Long gameId) {
		Optional<Game> gameOptional = gameDao.findById(gameId);

		if (gameOptional.isPresent())
			return ResponseAndEntityBuilder.buildGameStatLineResponse(gameOptional.get());
		else
			return null;
	}

	/*
	 * MAIN REQUEST METHODS
	 */

	/**
	 * Creates a new {@link Game} in the database from the information provided by
	 * the {@link GameRequest} passed in. Returns a {@link GamePostResponse}
	 * containing the newly created {@link Game} fields.
	 * 
	 * @param gameRequest the {@link GameRequest} to use to create the new
	 *                    {@link Game}
	 * @return the {@link GamePostResponse} wrapping the newly created {@link Game}
	 *         info.
	 * @throws DuplicateRecordException
	 */
	public GamePostResponse createGame(GameRequest gameRequest) throws DuplicateRecordException {
		Game gameToCreate = ResponseAndEntityBuilder.buildGame(gameRequest);

		/**
		 * Note that any relationships need to be loaded from the db directly so that
		 * they can be managed by JPA and be attached in the transaction.
		 */
		Optional<TeamLeague> teamleague = teamLeagueDao.findById(gameToCreate.getTeamLeague().getId());
		if (teamleague.isPresent())
			gameToCreate.setTeamLeague(teamleague.get());

		gameToCreate = gameDao.save(gameToCreate);

		/**
		 * Need to call refresh to update the entity from the database so that
		 * relationships are proxied and their fields are accessible
		 */
		gameDao.refresh(gameToCreate);

		return ResponseAndEntityBuilder.buildGamePostResponse(gameToCreate);
	}

	/**
	 * Creates a new {@link StatLine} in the database from the information provided
	 * by the {@link StatLineRequest} passed in. Returns a {@link StatLineResponse}
	 * containing the newly created {@link StatLine} fields.
	 * 
	 * @param statLineRequest the {@link StatLineRequest} to use to create the new
	 *                        {@link StatLine}
	 * @return the {@link StatLineResponse} wrapping the newly created
	 *         {@link StatLine} info.
	 * @throws DuplicateRecordException
	 */
	public StatLineResponse createStatLine(StatLineRequest statLineRequest) throws DuplicateRecordException {
		StatLine statLineToCreate = ResponseAndEntityBuilder.buildStatLine(statLineRequest);

		/**
		 * Note that any relationships need to be loaded from the db directly so that
		 * they can be managed by JPA and be attached in the transaction.
		 */
		Optional<Game> game = gameDao.findById(statLineToCreate.getGame().getId());
		if (game.isPresent())
			statLineToCreate.setGame(game.get());

		Optional<TeamLeaguePlayer> teamLeaguePlayer = teamLeaguePlayerDao
				.findById(statLineToCreate.getTeamLeaguePlayer().getId());
		if (teamLeaguePlayer.isPresent())
			statLineToCreate.setTeamLeaguePlayer(teamLeaguePlayer.get());

		statLineToCreate = statLineDao.save(statLineToCreate);

		/**
		 * Need to call refresh to update the entity from the database so that
		 * relationships are proxied and their fields are accessible
		 */
		statLineDao.refresh(statLineToCreate);

		return ResponseAndEntityBuilder.buildStatLineResponse(statLineToCreate);
	}
}
