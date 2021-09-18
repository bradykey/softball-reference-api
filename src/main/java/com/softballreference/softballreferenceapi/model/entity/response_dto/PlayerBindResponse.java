package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class PlayerBindResponse {
	/* PK */
	private Long teamLeaguePlayerId;

	/* PROPERTIES */
	private String name;

	/* RELATIONSHIPS */
	private Long teamLeagueId;

	/* GETTERS AND SETTERS */
	public Long getTeamLeaguePlayerId() {
		return teamLeaguePlayerId;
	}

	public void setTeamLeaguePlayerId(Long teamLeaguePlayerId) {
		this.teamLeaguePlayerId = teamLeaguePlayerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getTeamLeagueId() {
		return teamLeagueId;
	}

	public void setTeamLeagueId(Long teamLeagueId) {
		this.teamLeagueId = teamLeagueId;
	}
}