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
@Table(name = "Stat")
public class Stat implements java.io.Serializable {

    /*
     * Generated this with the following @
     * ...\softball-reference-api\target\classes:
     * 
     * >> serialver -classpath "./"
     * com.softballreference.softballreferenceapi.model.entity.Stat
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
}
