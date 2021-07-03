package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class PlayerResponse {
    /* PK */
    private Long teamLeaguePlayerId;

    /* PROPERTIES */
    private String playerName;

    /* RELATIONSHIPS */
    private AccumulatedResponse accumulated;

    /* GETTERS AND SETTERS */
    public Long getTeamLeaguePlayerId() {
        return teamLeaguePlayerId;
    }

    public void setTeamLeaguePlayerId(Long teamLeaguePlayerId) {
        this.teamLeaguePlayerId = teamLeaguePlayerId;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public AccumulatedResponse getAccumulated() {
        return accumulated;
    }

    public void setAccumulated(AccumulatedResponse accumulated) {
        this.accumulated = accumulated;
    }
}