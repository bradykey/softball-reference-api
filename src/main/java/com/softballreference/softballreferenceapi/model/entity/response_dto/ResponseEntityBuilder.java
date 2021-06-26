package com.softballreference.softballreferenceapi.model.entity.response_dto;

import com.softballreference.softballreferenceapi.model.entity.Game;

/**
 * A utility helper class that builds the response DTO objects (containing any
 * non-mapped properties) from their entity equivalents.
 */
public class ResponseEntityBuilder {

    public static GameResponse buildGameResponse(Game game) {
        GameResponse gameResponse = new GameResponse();

        gameResponse.setId(game.getId());
        gameResponse.setDate(game.getDate());
        gameResponse.setOpponent(game.getOpponent());
        gameResponse.setScore(game.getScore());
        gameResponse.setOpponentScore(game.getOpponentScore());
        gameResponse.setField(game.getField());

        return gameResponse;
    }
}
