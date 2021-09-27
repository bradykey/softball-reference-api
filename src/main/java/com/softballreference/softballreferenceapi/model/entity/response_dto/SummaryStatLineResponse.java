package com.softballreference.softballreferenceapi.model.entity.response_dto;

import java.util.List;

public class SummaryStatLineResponse {
    /* PK */
    private Long teamLeagueId;

    /* PROPERTIES */
    private String team;
    private String league;
    private Integer wins;
    private Integer losses;

    /* RELATIONSHIPS */
    private AccumulatedResponse accumulated;
    private List<PlayerSummaryResponse> players;

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

    public Integer getWins() {
        return wins;
    }

    public void setWins(Integer wins) {
        this.wins = wins;
    }

    public Integer getLosses() {
        return losses;
    }

    public void setLosses(Integer losses) {
        this.losses = losses;
    }

    public AccumulatedResponse getAccumulated() {
        return accumulated;
    }

    public void setAccumulated(AccumulatedResponse accumulated) {
        this.accumulated = accumulated;
    }

    public List<PlayerSummaryResponse> getPlayers() {
        return players;
    }

    public void setPlayers(List<PlayerSummaryResponse> players) {
        this.players = players;
    }
}
