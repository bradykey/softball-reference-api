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
    private Integer homeWins;
    private Integer homeLosses;
    private Integer awayWins;
    private Integer awayLosses;
    private Integer winStreak;
    private Integer runs;
    private Integer runsAllowed;

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

    public Integer getHomeWins() {
        return homeWins;
    }

    public void setHomeWins(Integer homeWins) {
        this.homeWins = homeWins;
    }

    public Integer getHomeLosses() {
        return homeLosses;
    }

    public void setHomeLosses(Integer homeLosses) {
        this.homeLosses = homeLosses;
    }

    public Integer getAwayWins() {
        return awayWins;
    }

    public void setAwayWins(Integer awayWins) {
        this.awayWins = awayWins;
    }

    public Integer getAwayLosses() {
        return awayLosses;
    }

    public void setAwayLosses(Integer awayLosses) {
        this.awayLosses = awayLosses;
    }

    public Integer getWinStreak() {
        return winStreak;
    }

    public void setWinStreak(Integer winStreak) {
        this.winStreak = winStreak;
    }

    public Integer getRuns() {
        return runs;
    }

    public void setRuns(Integer runs) {
        this.runs = runs;
    }

    public Integer getRunsAllowed() {
        return runsAllowed;
    }

    public void setRunsAllowed(Integer runsAllowed) {
        this.runsAllowed = runsAllowed;
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
