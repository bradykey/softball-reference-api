package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class TeamResponse {
    /* PK */
    private Long id;

    /* PROPERTIES */
    private String name;

    /* RELATIONSHIPS */

    public TeamResponse() {

    }

    /**
     * Overloaded constructor
     * 
     */
    public TeamResponse(Long id, String name) {
        this.id = id;
        this.name = name;
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
}
