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
 * Association Table (AT) that maps TeamLeague to Player
 */
@Entity
@Table(name = "TeamLeaguePlayer")
public class TeamLeaguePlayer implements java.io.Serializable {

    /*
     * Generated this with the following @
     * ...\softball-reference-api\target\classes:
     * 
     * >> serialver -classpath "./"
     * com.softballreference.softballreferenceapi.model.entity.TeamLeaguePlayer
     */
    private static final long serialVersionUID = -2284347245382663899L;

    /* PK */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id")
    private Long id;

    /* RELATIONSHIPS */

    // FK -- TeamLeague
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TeamLeagueId")
    private TeamLeague teamLeague;

    // FK -- Player
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PlayerId")
    private Player player;

    // 1-to-Many
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "teamLeaguePlayer")
    private Set<StatLine> statLines;

    /* GETTERS AND SETTERS */

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public TeamLeague getTeamLeague() {
        return teamLeague;
    }

    public void setTeamLeague(TeamLeague teamLeague) {
        this.teamLeague = teamLeague;
    }

    public Player getPlayer() {
        return player;
    }

    public void setPlayer(Player player) {
        this.player = player;
    }

    public Set<StatLine> getStatLines() {
        return statLines;
    }

    public void setStatLines(Set<StatLine> statLines) {
        this.statLines = statLines;
    }

}
