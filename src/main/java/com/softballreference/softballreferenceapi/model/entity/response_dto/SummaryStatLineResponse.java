package com.softballreference.softballreferenceapi.model.entity.response_dto;

import java.util.List;

import com.softballreference.softballreferenceapi.model.entity.Player;

public class SummaryStatLineResponse {
    /* PK */
    private Long teamLeagueId;

    /* PROPERTIES */
    private String team;
    private String league;

    /* RELATIONSHIPS */
    private AccumulatedResponse accumulated;
    private List<PlayerResponse> players;

    /* GETTERS AND SETTERS */
    public Long getTeamLeagueId() {
        return teamLeagueId;
    }

    public void setTeamLeagueId(Long teamLeagueId) {
        this.teamLeagueId = teamLeagueId;
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }

    public String getLeague() {
        return league;
    }

    public void setLeague(String league) {
        this.league = league;
    }

    public AccumulatedResponse getAccumulated() {
        return accumulated;
    }

    public void setAccumulated(AccumulatedResponse accumulated) {
        this.accumulated = accumulated;
    }

    public List<PlayerResponse> getPlayers() {
        return players;
    }

    public void setPlayers(List<PlayerResponse> players) {
        this.players = players;
    }
}