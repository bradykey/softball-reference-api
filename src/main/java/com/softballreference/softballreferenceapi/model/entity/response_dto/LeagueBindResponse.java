package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class LeagueBindResponse {
    /* PK */
    private Long leagueId;

    /* PROPERTIES */
    private String name;
    private String season;

    /* RELATIONSHIPS */

    /* GETTERS AND SETTERS */
    public Long getLeagueId() {
        return leagueId;
    }

    public void setLeagueId(Long leagueId) {
        this.leagueId = leagueId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSeason() {
        return season;
    }

    public void setSeason(String season) {
        this.season = season;
    }
}