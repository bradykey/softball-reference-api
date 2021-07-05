package com.softballreference.softballreferenceapi.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.softballreference.softballreferenceapi.model.dao.GameDao;
import com.softballreference.softballreferenceapi.model.dao.TeamLeagueDao;
import com.softballreference.softballreferenceapi.model.entity.Game;
import com.softballreference.softballreferenceapi.model.entity.TeamLeague;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GameBindResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GameStatLineResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.ResponseEntityBuilder;
import com.softballreference.softballreferenceapi.model.entity.response_dto.SummaryStatLineResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.TeamLeagueBindResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    GameDao gameDao;

    @Autowired
    TeamLeagueDao teamLeagueDao;

    /*
     * One-off dropdown populaters
     */

    /**
     * Returns a List of all the {@link TeamLeague} objects that exist in the
     * {@link TeamLeagueDao} in the form of a {@link TeamLeagueBindResponse}
     * wrapper. This should just be used to bind controls for what
     * {@link TeamLeague}s exist. No relationships are populated in this response.
     * 
     * @return the {@link TeamLeagueBindResponse} objects that are associated with
     *         the {@link TeamLeague}s in the {@code TeamLeague} table.
     */
    public List<TeamLeagueBindResponse> getAllTeamLeaguesForBinding() {
        List<TeamLeague> teamLeagues = teamLeagueDao.findAll();

        List<TeamLeagueBindResponse> teamLeagueResponses = new ArrayList<TeamLeagueBindResponse>();

        teamLeagues.forEach(tL -> teamLeagueResponses.add(ResponseEntityBuilder.buildTeamLeagueBindResponse(tL)));

        return teamLeagueResponses;
    }

    /**
     * Returns a List of all the {@link Game} objects of a {@link TeamLeague} that
     * exist in the {@link GameDao} in the form of a {@link GameBindResponse}
     * wrapper. This should just be used to bind controls for what {@link Game}s
     * exist on a {@link TeamLeague}. No relationships are populated in this
     * response.
     * 
     * @return the {@link GameBindResponse} objects that are associated with the
     *         {@link TeamLeague}s in the {@code Game} table.
     */
    public List<GameBindResponse> getGamesOfTeamLeagueByIdForBinding(Long teamLeagueId) {
        /*
         * Example will look for an exact match on all non-null properties. Therefore, I
         * want to find those Games that are associated with the passed in TeamLeagueId.
         */
        Game probe = new Game();
        probe.setTeamLeague(new TeamLeague(teamLeagueId));

        Example<Game> example = Example.of(probe);

        List<Game> games = gameDao.findAll(example);

        List<GameBindResponse> gameResponses = new ArrayList<GameBindResponse>();
        games.forEach(game -> gameResponses.add(ResponseEntityBuilder.buildGameBindResponse(game)));

        return gameResponses;
    }

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
    public SummaryStatLineResponse getTeamLeagueByIdForSummaryStatLine(Long teamLeagueId) {
        Optional<TeamLeague> teamLeagueOptional = teamLeagueDao.findById(teamLeagueId);

        if (teamLeagueOptional.isPresent())
            return ResponseEntityBuilder.buildSummaryStatLineResponse(teamLeagueOptional.get());
        else
            return null;
    }

    /*
     * GAME TABLE METHODS
     */

    /**
     * Fetches the single {@link Game} object associated with the passed in
     * {@code gameId} and wrapped in a {@link GameStatLineResponse}.
     * 
     * @param gameId the {@code Long} Id associated with the {@link Game} to fetch.
     * @return a {@link GameStatLineResponse} object built from the {@link Game}
     *         entity associated with the {@code gameId}, or {@code null} if one
     *         doesn't exist in the db.
     */
    public GameStatLineResponse getGameById(Long gameId) {
        // Optional<Game> gameOptional = gameDao.findById(gameId);

        // if (gameOptional.isPresent())
        // return ResponseEntityBuilder.buildGameStatLineResponse(gameOptional.get());
        // else
        // return null;

        return null;
    }
}
