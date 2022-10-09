package com.softballreference.softballreferenceapi.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.softballreference.softballreferenceapi.model.dao.LeagueDao;
import com.softballreference.softballreferenceapi.model.entity.response_dto.LeagueBindResponse;
import com.softballreference.softballreferenceapi.service.RestService;

@CrossOrigin
@RestController
@RequestMapping("/leagues")
public class LeagueController {

    @Autowired
    RestService restService;

    /**
     * Returns all of the {@link LeagueBindResponse} from the
     * {@link LeagueDao}.
     * 
     * Since the @RequestMapping was used at the class level to define all URIs to
     * be sub-uris of /teams, any GET http request at the /teams URI
     * will call this method.
     * 
     * @param team an {@code Optional} query param to search on the team of the
     *             LeagueLeague
     * @return a List of {@link LeagueBindResponse} objects matching what's in
     *         the {@link LeagueDao} as part of an HttpStatus.OK response.
     */
    @GetMapping
    public ResponseEntity<List<LeagueBindResponse>> getAllLeaguesForBind() {
        return new ResponseEntity<List<LeagueBindResponse>>(restService.getAllLeaguesForBinding(),
                new HttpHeaders(), HttpStatus.OK);
    }
}
