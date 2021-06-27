package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class PlayerResponse {
    /* PK */
    private Long id;

    /* PROPERTIES */
    private String name;

    /* RELATIONSHIPS */

    public PlayerResponse() {

    }

    /**
     * Overloaded constructor
     * 
     */
    public PlayerResponse(Long id, String name) {
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
