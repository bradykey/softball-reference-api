package com.softballreference.softballreferenceapi.model.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * Association Table (AT) that maps Team to League
 */
@Entity
@Table(name = "TeamLeague")
public class TeamLeague implements java.io.Serializable {

    /*
     * Generated this with the following @
     * ...\softball-reference-api\target\classes:
     * 
     * >> serialver -classpath "./"
     * com.softballreference.softballreferenceapi.model.entity.TeamLeague
     */
    private static final long serialVersionUID = -609088203340518764L;

    /* PK */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id")
    private Long id;

    /* RELATIONSHIPS */

    // FK -- Team
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TeamId")
    private Team team;

    // FK -- League
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "LeagueId")
    private League league;

    // 1-to-Many
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "teamLeague")
    private Set<Game> games;

    // 1-to-Many
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "teamLeague")
    private Set<TeamLeaguePlayer> teamLeaguePlayers;

    public TeamLeague() {

    }

    /**
     * OVERLOADED CONSTRUCTOR
     * 
     * @param teamLeagueId
     */
    public TeamLeague(Long teamLeagueId) {
        this.id = teamLeagueId;
    }

    /* GETTERS AND SETTERS */

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    public League getLeague() {
        return league;
    }

    public void setLeague(League league) {
        this.league = league;
    }

    public Set<Game> getGames() {
        return games;
    }

    public void setGames(Set<Game> games) {
        this.games = games;
    }

    public Set<TeamLeaguePlayer> getTeamLeaguePlayers() {
        return teamLeaguePlayers;
    }

    public void setTeamLeaguePlayers(Set<TeamLeaguePlayer> teamLeaguePlayers) {
        this.teamLeaguePlayers = teamLeaguePlayers;
    }

}
