package com.softballreference.softballreferenceapi.service;

import java.util.List;
import java.util.ArrayList;

import com.softballreference.softballreferenceapi.model.dao.GameDao;
import com.softballreference.softballreferenceapi.model.entity.Game;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GameResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.ResponseEntityBuilder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
}
