package com.softballreference.softballreferenceapi.controllers;

import java.util.List;

import com.softballreference.softballreferenceapi.exception.RecordNotFoundException;
import com.softballreference.softballreferenceapi.model.dao.GameDao;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GameResponse;
import com.softballreference.softballreferenceapi.service.RestService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping("/games")
public class GameController {

    @Autowired
    RestService restService;

    /**
     * Returns all of the {@link GameResponse}s from the {@link GameDao}.
     * 
     * Since the @RequestMapping was used at the class level to define all URIs to
     * be sub-uris of {@code /games}, any GET http reqquest at the {@code /games}
     * URI will call this method.
     * 
     * @return a List of {@link GameResponse} objects matching what's in the
     *         {@link GameDao} as part of an {@link HttpStatus.OK} response.
     */
    @GetMapping
    public ResponseEntity<List<GameResponse>> getAllGames() {
        return new ResponseEntity<List<GameResponse>>(restService.getAllGames(), new HttpHeaders(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<GameResponse> getGameById(@PathVariable("id") Long gameId) {
        GameResponse entity = restService.getGameById(gameId);

        if (entity == null)
            throw new RecordNotFoundException("No game exists for given id", gameId);

        return new ResponseEntity<GameResponse>(entity, new HttpHeaders(), HttpStatus.OK);
    }
}
