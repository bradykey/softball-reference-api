package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class TeamLeagueBindResponse {
    /* PK */
    private Long teamLeagueId;

    /* PROPERTIES */
    private String team;
    private String league;

    /* RELATIONSHIPS */

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
}