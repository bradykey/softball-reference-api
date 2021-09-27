package com.softballreference.softballreferenceapi.model.entity.response_dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class GameSummaryResponse {
    /* PK */
    private Long gameId;

    /* PROPERTIES */
    private String team;
    private String league;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date date;
    private String opponent;
    private Integer score;
    private Integer opponentScore;
    private String field;

    /* RELATIONSHIPS */
    private AccumulatedResponse accumulated;

    /* GETTERS AND SETTERS */
    public Long getGameId() {
        return gameId;
    }

    public void setGameId(Long gameId) {
        this.gameId = gameId;
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

    public AccumulatedResponse getAccumulated() {
        return accumulated;
    }

    public void setAccumulated(AccumulatedResponse accumulated) {
        this.accumulated = accumulated;
    }
}