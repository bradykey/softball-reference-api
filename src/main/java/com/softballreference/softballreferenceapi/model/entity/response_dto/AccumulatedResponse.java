package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class AccumulatedResponse {
    /* PROPERTIES */
    private Integer oBPPlus;
    private Integer sLGPlus;
    private Integer oPSPlus;

    /* RELATIONSHIPS */
    private StatLineResponse statLine;

    /* GETTERS AND SETTERS */
    public Integer getOBPPlus() {
        return oBPPlus;
    }

    public void setOBPPlus(Integer oBPPlus) {
        this.oBPPlus = oBPPlus;
    }

    public Integer getSLGPlus() {
        return sLGPlus;
    }

    public void setSLGPlus(Integer sLGPlus) {
        this.sLGPlus = sLGPlus;
    }

    public Integer getOPSPlus() {
        return oPSPlus;
    }

    public void setOPSPlus(Integer oPSPlus) {
        this.oPSPlus = oPSPlus;
    }

    public StatLineResponse getStatLine() {
        return statLine;
    }

    public void setStatLine(StatLineResponse statLine) {
        this.statLine = statLine;
    }

}