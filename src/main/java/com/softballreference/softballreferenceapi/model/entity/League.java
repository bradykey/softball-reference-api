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
 * Lookup Table (LUT) for the Leagues the stats are taken for.
 */
@Entity
@Table(name = "League")
public class League implements java.io.Serializable {

    /*
     * Generated this with the following @
     * ...\softball-reference-api\target\classes:
     * 
     * >> serialver -classpath "./"
     * com.softballreference.softballreferenceapi.model.entity.League
     */
    private static final long serialVersionUID = -4624975846046029703L;

    /* PK */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id")
    private Long id;

    /* PROPERTIES */
    @Column(name = "Name")
    private String name;

    @Column(name = "Season")
    private String season;

    /* RELATIONSHIPS */

    // 1-to-Many
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "league")
    private Set<TeamLeague> teamLeagues;

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

    public String getSeason() {
        return season;
    }

    public void setSeason(String season) {
        this.season = season;
    }

    public Set<TeamLeague> getTeamLeagues() {
        return teamLeagues;
    }

    public void setTeamLeagues(Set<TeamLeague> teamLeagues) {
        this.teamLeagues = teamLeagues;
    }

}
