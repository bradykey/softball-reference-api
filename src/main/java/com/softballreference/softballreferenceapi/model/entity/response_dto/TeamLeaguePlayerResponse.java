package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class TeamLeaguePlayerResponse {
    /* PK */
    private Long id;

    /* PROPERTIES */

    /* RELATIONSHIPS */
    private TeamLeagueResponse teamLeague;
    private PlayerResponse player;

    public TeamLeaguePlayerResponse() {

    }

    /**
     * Overloaded constructor
     * 
     * @param id
     * @param teamLeague
     * @param player
     */
    public TeamLeaguePlayerResponse(Long id, TeamLeagueResponse teamLeague, PlayerResponse player) {
        this.id = id;
        this.teamLeague = teamLeague;
        this.player = player;
    }

    // GETTERS AND SETTERS
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public TeamLeagueResponse getTeamLeague() {
        return teamLeague;
    }

    public void setTeamLeague(TeamLeagueResponse teamLeague) {
        this.teamLeague = teamLeague;
    }

    public PlayerResponse getPlayer() {
        return player;
    }

    public void setPlayer(PlayerResponse player) {
        this.player = player;
    }
}
