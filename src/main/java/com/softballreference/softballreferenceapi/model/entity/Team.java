package com.softballreference.softballreferenceapi.model.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Lookup Table (LUT) for the Teams the stats are captured for.
 */
@Entity
@Table(name = "Team")
public class Team implements java.io.Serializable {

    /*
     * Generated this with the following @
     * ...\softball-reference-api\target\classes:
     * 
     * >> serialver -classpath "./"
     * com.softballreference.softballreferenceapi.model.entity.Team
     */
    private static final long serialVersionUID = 6122459080945323319L;

    /* PK */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id")
    private Long id;

    /* PROPERTIES */
    @Column(name = "Name")
    private String name;

    /* RELATIONSHIPS */

    // 1-to-Many
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "team")
    private Set<TeamLeague> teamLeagues;

    public Team() {

    }

    /**
     * Overloaded Constructor
     * 
     * @param name the {@code String} to use as the name
     */
    public Team(String name) {
        this.name = name;
    }

    /* GETTERS AND SETTERS */

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

    public Set<TeamLeague> getTeamLeagues() {
        return teamLeagues;
    }

    public void setTeamLeagues(Set<TeamLeague> teamLeagues) {
        this.teamLeagues = teamLeagues;
    }
}
