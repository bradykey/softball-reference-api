package com.softballreference.softballreferenceapi.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "StatLine")
public class StatLine implements java.io.Serializable {

    /*
     * Generated this with the following @
     * ...\softball-reference-api\target\classes:
     * 
     * >> serialver -classpath "./"
     * com.softballreference.softballreferenceapi.model.entity.StatLine
     */
    private static final long serialVersionUID = -119814132784595617L;

    /* PK */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id")
    private Long id;

    /* PROPERTIES */
    @Column(name = "BattingOrder")
    private Integer battingOrder;

    @Column(name = "PlateAppearances")
    private Integer plateAppearances;

    @Column(name = "Runs")
    private Integer runs;

    @Column(name = "Singles")
    private Integer singles;

    @Column(name = "Doubles")
    private Integer doubles;

    @Column(name = "Triples")
    private Integer triples;

    @Column(name = "HomeRuns")
    private Integer homeRuns;

    @Column(name = "RunsBattedIn")
    private Integer runsBattedIn;

    @Column(name = "BaseOnBalls")
    private Integer baseOnBalls;

    @Column(name = "Strikeouts")
    private Integer strikeouts;

    @Column(name = "Sacrifices")
    private Integer sacrifices;

    @Column(name = "HomeRunForOuts")
    private Integer homeRunForOuts;

    @Column(name = "FoulOuts")
    private Integer foulOuts;

    @Column(name = "GroundIntoDoublePlays")
    private Integer groundedIntoDoublePlays;

    @Column(name = "LeftOnBase")
    private Integer leftOnBase;

    /* RELATIONSHIPS */

    // FK -- TeamLeaguePlayer
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TeamLeaguePlayerId")
    private TeamLeaguePlayer teamLeaguePlayer;

    // FK -- Game
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "GameId")
    private Game game;

    /* GETTERS AND SETTERS */

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getBattingOrder() {
        return battingOrder;
    }

    public void setBattingOrder(Integer battingOrder) {
        this.battingOrder = battingOrder;
    }

    public Integer getPlateAppearances() {
        return plateAppearances;
    }

    public void setPlateAppearances(Integer plateAppearances) {
        this.plateAppearances = plateAppearances;
    }

    public Integer getRuns() {
        return runs;
    }

    public void setRuns(Integer runs) {
        this.runs = runs;
    }

    public Integer getSingles() {
        return singles;
    }

    public void setSingles(Integer singles) {
        this.singles = singles;
    }

    public Integer getDoubles() {
        return doubles;
    }

    public void setDoubles(Integer doubles) {
        this.doubles = doubles;
    }

    public Integer getTriples() {
        return triples;
    }

    public void setTriples(Integer triples) {
        this.triples = triples;
    }

    public Integer getHomeRuns() {
        return homeRuns;
    }

    public void setHomeRuns(Integer homeRuns) {
        this.homeRuns = homeRuns;
    }

    public Integer getRunsBattedIn() {
        return runsBattedIn;
    }

    public void setRunsBattedIn(Integer runsBattedIn) {
        this.runsBattedIn = runsBattedIn;
    }

    public Integer getBaseOnBalls() {
        return baseOnBalls;
    }

    public void setBaseOnBalls(Integer baseOnBalls) {
        this.baseOnBalls = baseOnBalls;
    }

    public Integer getStrikeouts() {
        return strikeouts;
    }

    public void setStrikeouts(Integer strikeouts) {
        this.strikeouts = strikeouts;
    }

    public Integer getSacrifices() {
        return sacrifices;
    }

    public void setSacrifices(Integer sacrifices) {
        this.sacrifices = sacrifices;
    }

    public Integer getHomeRunForOuts() {
        return homeRunForOuts;
    }

    public void setHomeRunForOuts(Integer homeRunForOuts) {
        this.homeRunForOuts = homeRunForOuts;
    }

    public Integer getFoulOuts() {
        return foulOuts;
    }

    public void setFoulOuts(Integer foulOuts) {
        this.foulOuts = foulOuts;
    }

    public Integer getGroundedIntoDoublePlays() {
        return groundedIntoDoublePlays;
    }

    public void setGroundedIntoDoublePlays(Integer groundedIntoDoublePlays) {
        this.groundedIntoDoublePlays = groundedIntoDoublePlays;
    }

    public Integer getLeftOnBase() {
        return leftOnBase;
    }

    public void setLeftOnBase(Integer leftOnBase) {
        this.leftOnBase = leftOnBase;
    }

    public TeamLeaguePlayer getTeamLeaguePlayer() {
        return teamLeaguePlayer;
    }

    public void setTeamLeaguePlayer(TeamLeaguePlayer teamLeaguePlayer) {
        this.teamLeaguePlayer = teamLeaguePlayer;
    }

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }
}
