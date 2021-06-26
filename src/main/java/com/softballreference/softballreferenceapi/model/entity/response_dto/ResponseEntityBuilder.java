package com.softballreference.softballreferenceapi.model.entity.response_dto;

import com.softballreference.softballreferenceapi.model.entity.Game;

/**
 * A utility helper class that builds the response DTO objects (containing any
 * non-mapped properties) from their entity equivalents.
 */
public class ResponseEntityBuilder {

    public static GameResponse buildGameResponse(Game game) {
        GameResponse gameResponse = new GameResponse();

        // TODO -- actually do some mapping...

        return gameResponse;
    }
}
