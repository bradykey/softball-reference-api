package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class TeamBindResponse {
    /* PK */
    private Long teamId;

    /* PROPERTIES */
    private String name;

    /* RELATIONSHIPS */

    /* GETTERS AND SETTERS */
    public Long getTeamId() {
        return teamId;
    }

    public void setTeamId(Long teamId) {
        this.teamId = teamId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}