package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class LeagueResponse {
    /* PK */
    private Long id;

    /* PROPERTIES */
    private String name;
    private String season;

    /* RELATIONSHIPS */

    public LeagueResponse() {

    }

    /**
     * Overloaded constructor
     * 
     */
    public LeagueResponse(Long id, String name, String season) {
        this.id = id;
        this.name = name;
        this.season = season;
    }

    // GETTERS AND SETTERS
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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
