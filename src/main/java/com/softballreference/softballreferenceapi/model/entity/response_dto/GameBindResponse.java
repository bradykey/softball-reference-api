package com.softballreference.softballreferenceapi.model.entity.response_dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class GameBindResponse {
    /* PK */
    private Long gameId;

    /* PROPERTIES */
    @JsonFormat(pattern = "yyy-MM-dd HH:mm:ss")
    private Date date;
    private String opponent;

    /* RELATIONSHIPS */
    private Long teamLeagueId;

    /* GETTERS AND SETTERS */
    public Long getGameId() {
        return gameId;
    }

    public void setGameId(Long gameId) {
        this.gameId = gameId;
    }

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

    public Long getTeamLeagueId() {
        return teamLeagueId;
    }

    public void setTeamLeagueId(Long teamLeagueId) {
        this.teamLeagueId = teamLeagueId;
    }
}