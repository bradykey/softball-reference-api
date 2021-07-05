package com.softballreference.softballreferenceapi.controllers;

import java.util.List;

import com.softballreference.softballreferenceapi.exception.RecordNotFoundException;
import com.softballreference.softballreferenceapi.model.entity.TeamLeague;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GameBindResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.SummaryStatLineResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.TeamLeagueBindResponse;
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
@RequestMapping("/teamleagues")
public class TeamLeagueController {

    @Autowired
    RestService restService;

    /**
     * Returns all of the {@link TeamLeagueBindResponse} from the
     * {@link TeamLeagueDao}.
     * 
     * Since the @RequestMapping was used at the class level to define all URIs to
     * be sub-uris of /teamleagues, any GET http request at the /teamleagues URI
     * will call this method.
     * 
     * @return a List of {@link TeamLeagueBindResponse} objects matching what's in
     *         the {@link TeamLeagueDao} as part of an HttpStatus.OK response.
     */
    @GetMapping
    public ResponseEntity<List<TeamLeagueBindResponse>> getAllTeamLeaguesForBind() {
        return new ResponseEntity<List<TeamLeagueBindResponse>>(restService.getAllTeamLeaguesForBinding(),
                new HttpHeaders(), HttpStatus.OK);
    }

    /**
     * Fetches the single {@link SummaryStatLineResponse} associated with the passed
     * in Id.
     * 
     * The @GetMapping annotation ties this method to the /teamleagues/{id} URI from
     * aGET http request, while the @PathVariable annotation binds the template
     * variable from therequest URI mapping to the method parameter. If they have
     * the same name then you don't need to qualify the annotation with the string
     * name.
     * 
     * @param teamLeagueId
     * @return the {@link SummaryStatLineResponse} associated with the {@code Long}
     *         Id as part of an HttpStatus.OK response.
     * @throws RecordNotFoundException The exception is thrown if now
     *                                 {@link TeamLeague} is associated with the Id.
     *                                 NOTE: This exception is of type
     *                                 {@link RuntimeException} so this method does
     *                                 not need to declare it as "throwable".
     */
    @GetMapping("/{id}")
    public ResponseEntity<SummaryStatLineResponse> getTeamLeagueById(@PathVariable("id") Long teamLeagueId) {
        SummaryStatLineResponse response = restService.getSummaryStatLineResponseByTeamLeagueId(teamLeagueId);

        if (response == null)
            throw new RecordNotFoundException("No teamleague exists for given id", teamLeagueId);

        return new ResponseEntity<SummaryStatLineResponse>(response, new HttpHeaders(), HttpStatus.OK);
    }

    /**
     * Fetches the collection of {@link GameBindResponse}s associated with the
     * {@code TeamLeagueId} that's passed in.
     * 
     * The @GetMapping annotation ties this method to the /teamleagues/{id}/games
     * URI from a GET http request, while the @PathVariable annotation binds the
     * template variable from the request URI mapping to the method parameter. If
     * they have the same name then you don't need to qualify the annotation with
     * the string name.
     * 
     * @param teamLeagueId
     * @return a List of {@link GameBindReponse} objects with {@code TeamLeagueId}
     *         matching what's in the {@link GameDao} as part of an HttpStatus.OK
     *         response.
     * 
     * @throws RecordNotFoundException The exception is thrown if no
     *                                 {@link TeamLeague} is associated with the Id.
     *                                 NOTE: This exception is of type
     *                                 {@link RuntimeException} so this method does
     *                                 not need to declare it as "throwable".
     */
    @GetMapping("/{id}/games")
    public ResponseEntity<List<GameBindResponse>> getGamesOfTeamLeagueByIdForBind(
            @PathVariable("id") Long teamLeagueId) {

        if (!restService.doesTeamLeagueExistById(teamLeagueId))
            // there is not a TeamLeague associated with the passed in Id
            throw new RecordNotFoundException("No teamleague exists for given id", teamLeagueId);

        return new ResponseEntity<List<GameBindResponse>>(restService.getGamesOfTeamLeagueByIdForBinding(teamLeagueId),
                new HttpHeaders(), HttpStatus.OK);
    }
}
