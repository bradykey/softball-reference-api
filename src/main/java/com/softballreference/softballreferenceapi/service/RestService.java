package com.softballreference.softballreferenceapi.service;

import java.util.List;
import java.util.Optional;
import java.util.ArrayList;

import com.softballreference.softballreferenceapi.model.dao.GameDao;
import com.softballreference.softballreferenceapi.model.entity.Game;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GameResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.ResponseEntityBuilder;

import org.springframework.beans.factory.annotation.Autowired;
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

    /*
     * GAME TABLE METHODS
     */

    /**
     * Returns a List of {@link GameResponse} objects from the {@link GameDao}.
     * 
     * @return the {@link Game} objects that are in the {@code Game} table.
     */
    public List<GameResponse> getAllGames() {
        List<Game> games = gameDao.findAll();

        List<GameResponse> gameResponses = new ArrayList<GameResponse>();

        games.forEach(game -> gameResponses.add(ResponseEntityBuilder.buildGameResponse(game)));

        return gameResponses;
    }

    /**
     * Fetches the single {@link Game} object associated with the passed in
     * {@code gameId} and wrapped in a {@link GameResponse}.
     * 
     * @param gameId the {@code Long} Id associated with the {@link Game} to fetch.
     * @return a {@link GameResponse} object built from the {@link Game} entity
     *         associated with the {@code gameId}, or {@code null} if one doesn't
     *         exist in the db.
     */
    public GameResponse getGameById(Long gameId) {
        Optional<Game> gameOptional = gameDao.findById(gameId);

        if (gameOptional.isPresent())
            return ResponseEntityBuilder.buildGameResponse(gameOptional.get());
        else
            return null;
    }
}
