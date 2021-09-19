package com.softballreference.softballreferenceapi.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.softballreference.softballreferenceapi.exception.DuplicateRecordException;
import com.softballreference.softballreferenceapi.exception.RecordNotFoundException;
import com.softballreference.softballreferenceapi.model.entity.Game;
import com.softballreference.softballreferenceapi.model.entity.request_dto.GameRequest;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GameResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GameStatLineResponse;
import com.softballreference.softballreferenceapi.service.RestService;

@CrossOrigin
@RestController
@RequestMapping("/games")
public class GameController {

    @Autowired
    RestService restService;

    /**
     * Fetches the single {@link GameStatLineResponse} associated with the passed in
     * Id.
     * 
     * The @GetMapping annotation ties this method to the /games/{id} URI from aGET
     * http request, while the @PathVariable annotation binds the template variable
     * from therequest URI mapping to the method parameter. If they have the same
     * name then you don't need to qualify the annotation with the string name.
     * 
     * @param gameId
     * @return the {@link GameStatLineResponse} associated with the {@code Long} Id
     *         as part of an HttpStatus.OK response.
     * @throws RecordNotFoundException The exception is thrown if now {@link Game}
     *                                 is associated with the Id. NOTE: This
     *                                 exception is of type {@link RuntimeException}
     *                                 so this method does not need to declare it as
     *                                 "throwable".
     */
    @GetMapping("/{id}")
    public ResponseEntity<GameStatLineResponse> getGameById(@PathVariable("id") Long gameId) {
        GameStatLineResponse entity = restService.getGameStatLineResponseByGameId(gameId);

        if (entity == null)
            throw new RecordNotFoundException("No game exists for given id", gameId);

        return new ResponseEntity<GameStatLineResponse>(entity, new HttpHeaders(), HttpStatus.OK);
    }
    
    /**
	 * Creates and returns a new {@link Game} from the {@link GameRequest}
	 * param.
	 * 
	 * @param gameToCreate The {@link GameRequest} object to be saved to the database.
	 * @return the {@link GameResponse} that was created and saved to the database.
	 */
	@PostMapping
	public ResponseEntity<GameResponse> createGame(@Valid @RequestBody GameRequest gameToCreate) {
		if (gameToCreate.getTeamLeagueId() == null) {
			String errorMessage = "The teamleague ids must contain a non-null value.";
			throw new ResponseStatusException(HttpStatus.BAD_REQUEST, errorMessage);
		}
		
		try {
			return new ResponseEntity<GameResponse>(restService.createGame(gameToCreate), new HttpHeaders(), HttpStatus.OK);
		}
		catch (DuplicateRecordException ex) {
			throw new ResponseStatusException(HttpStatus.CONFLICT, ex.getMessage());
		}
	}
}
