package com.softballreference.softballreferenceapi.model.entity.response_dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class GameResponse {
    /* PK */
    private Long id;

    /* PROPERTIES */
    @JsonFormat(pattern = "yyy-MM-dd HH:mm:ss")
    private Date date;
    private String opponent;
    private Integer score;
    private Integer opponentScore;
    private String field;

    /* RELATIONSHIPS */

    // private TeamLeagueResponse teamLeague;

    public GameResponse() {

    }

    public GameResponse(Long id, Date date, String opponent, Integer score, Integer opponentScore, String field) {
        this.id = id;
        this.date = date;
        this.opponent = opponent;
        this.score = score;
        this.opponentScore = opponentScore;
        this.field = field;
    }

    // GETTERS AND SETTERS

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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
}
