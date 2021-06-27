package com.softballreference.softballreferenceapi.model.entity;

import java.util.Date;
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

@Entity
@Table(name = "Game")
public class Game implements java.io.Serializable {

    /*
     * Generated this with the following @
     * ...\softball-reference-api\target\classes:
     * 
     * >> serialver -classpath "./"
     * com.softballreference.softballreferenceapi.model.entity.Game
     */
    private static final long serialVersionUID = -8642709480466642814L;

    /* PK */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id")
    private Long id;

    /* PROPERTIES */
    @Column(name = "Date")
    private Date date;

    @Column(name = "Opponent")
    private String opponent;

    @Column(name = "Score")
    private Integer score;

    @Column(name = "OpponentScore")
    private Integer opponentScore;

    @Column(name = "Field")
    private String field;

    @Column(name = "WasHome")
    private Boolean wasHome;

    /* RELATIONSHIPS */

    // FK -- TeamLeague
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TeamLeagueId")
    private TeamLeague teamLeague;

    // 1-to-Many
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "game")
    private Set<StatLine> statLines;

    /* GETTERS AND SETTERS */

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getOpponent() {
        return opponent;
    }

    public void setOpponent(String opponent) {
        this.opponent = opponent;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getOpponentScore() {
        return opponentScore;
    }

    public void setOpponentScore(Integer opponentScore) {
        this.opponentScore = opponentScore;
    }

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

    public Boolean getWasHome() {
        return wasHome;
    }

    public void setWasHome(Boolean wasHome) {
        this.wasHome = wasHome;
    }

    public TeamLeague getTeamLeague() {
        return teamLeague;
    }

    public void setTeamLeague(TeamLeague teamLeague) {
        this.teamLeague = teamLeague;
    }

    public Set<StatLine> getStatLines() {
        return statLines;
    }

    public void setStatLines(Set<StatLine> statLines) {
        this.statLines = statLines;
    }

}
