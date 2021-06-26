package com.softballreference.softballreferenceapi.model.entity;

import java.util.Date;

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

    /* RELATIONSHIPS */

    // FK -- TeamLeague
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TeamLeagueId")
    private TeamLeague teamLeague;
}
