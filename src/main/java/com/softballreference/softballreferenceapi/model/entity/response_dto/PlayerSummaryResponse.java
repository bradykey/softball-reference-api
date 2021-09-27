package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class PlayerSummaryResponse {
    /* PK */
    private Long teamLeaguePlayerId;

    /* RELATIONSHIPS */
    private AccumulatedResponse accumulated;

    /* GETTERS AND SETTERS */
    public Long getTeamLeaguePlayerId() {
        return teamLeaguePlayerId;
    }

    public void setTeamLeaguePlayerId(Long teamLeaguePlayerId) {
        this.teamLeaguePlayerId = teamLeaguePlayerId;
    }

    public AccumulatedResponse getAccumulated() {
        return accumulated;
    }

    public void setAccumulated(AccumulatedResponse accumulated) {
        this.accumulated = accumulated;
    }
}