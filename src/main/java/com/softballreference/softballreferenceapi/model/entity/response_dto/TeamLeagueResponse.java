package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class TeamLeagueResponse {
    /* PK */
    private Long id;

    /* PROPERTIES */
    /**
     * TODO -- I think this is where I want the non-mapped summary stat-lines for an
     * entire player.
     */

    /* RELATIONSHIPS */
    private TeamResponse team;
    private LeagueResponse league;

    public TeamLeagueResponse() {

    }

    /**
     * Overloaded constructor
     * 
     * @param id
     * @param team
     * @param league
     */
    public TeamLeagueResponse(Long id, TeamResponse team, LeagueResponse league) {
        this.id = id;
        this.team = team;
        this.league = league;
    }

    // GETTERS AND SETTERS
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public TeamResponse getTeam() {
        return team;
    }

    public void setTeam(TeamResponse team) {
        this.team = team;
    }

    public LeagueResponse getLeague() {
        return league;
    }

    public void setLeague(LeagueResponse league) {
        this.league = league;
    }
}
