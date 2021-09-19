package com.softballreference.softballreferenceapi.model.entity.request_dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class GameRequest {
    /* PROPERTIES */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date date;
    private String opponent;
    private Integer score;
	private Integer opponentScore;
    private String field;
    private Boolean wasHome;

    /* RELATIONSHIPS */
    private Long teamLeagueId;

    /* GETTERS AND SETTERS */
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getOpponent() {
        return opponent;
    }

    public void setOpponent(String opponent) {
        this.opponent = opponent;
    }
    
    public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public Integer getOpponentScore() {
		return opponentScore;
	}

	public void setOpponentScore(Integer opponentScore) {
		this.opponentScore = opponentScore;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public Boolean getWasHome() {
		return wasHome;
	}

	public void setWasHome(Boolean wasHome) {
		this.wasHome = wasHome;
	}

    public Long getTeamLeagueId() {
        return teamLeagueId;
    }

    public void setTeamLeagueId(Long teamLeagueId) {
        this.teamLeagueId = teamLeagueId;
    }
}