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
 * Lookup Table (LUT) for the Players that play on Teams in Leagues.
 */
@Entity
@Table(name = "Player")
public class Player implements java.io.Serializable {

    /*
     * Generated this with the following @
     * ...\softball-reference-api\target\classes:
     * 
     * >> serialver -classpath "./"
     * com.softballreference.softballreferenceapi.model.entity.Player
     */
    private static final long serialVersionUID = -6774783989801691435L;

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
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "player")
    private Set<TeamLeaguePlayer> teamLeaguePlayers;

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

    public Set<TeamLeaguePlayer> getTeamLeaguePlayers() {
        return teamLeaguePlayers;
    }

    public void setTeamLeaguePlayers(Set<TeamLeaguePlayer> teamLeaguePlayers) {
        this.teamLeaguePlayers = teamLeaguePlayers;
    }

}
