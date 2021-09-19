package com.softballreference.softballreferenceapi.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.softballreference.softballreferenceapi.exception.DuplicateRecordException;
import com.softballreference.softballreferenceapi.model.entity.StatLine;
import com.softballreference.softballreferenceapi.model.entity.request_dto.StatLineRequest;
import com.softballreference.softballreferenceapi.model.entity.response_dto.StatLineResponse;
import com.softballreference.softballreferenceapi.service.RestService;

@CrossOrigin
@RestController
@RequestMapping("/statlines")
public class StatLineController {

	@Autowired
	RestService restService;

	/**
	 * Creates and returns a new {@link StatLine} from the {@link StatLineRequest}
	 * param.
	 * 
	 * @param statLineToCreate The {@link StatLineRequest} object to be saved to the database.
	 * @return the {@link StatLineResponse} that was created and saved to the database.
	 */
	@PostMapping
	public ResponseEntity<StatLineResponse> createStatLine(@Valid @RequestBody StatLineRequest statLineToCreate) {
		if (statLineToCreate.getGameId() == null || statLineToCreate.getTeamLeaguePlayerId() == null) {
			String errorMessage = "The game and teamleagueplayer ids must contain a non-null value.";
			throw new ResponseStatusException(HttpStatus.BAD_REQUEST, errorMessage);
		}
		
		try {
			return new ResponseEntity<StatLineResponse>(restService.createStatLine(statLineToCreate), new HttpHeaders(), HttpStatus.OK);
		}
		catch (DuplicateRecordException ex) {
			throw new ResponseStatusException(HttpStatus.CONFLICT, ex.getMessage());
		}
	}
}
