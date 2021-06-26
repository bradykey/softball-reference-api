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

/**
 * Association Table (AT) that maps TeamLeague to Player
 */
@Entity
@Table(name = "TeamLeaguePlayer")
public class TeamLeaguePlayer implements java.io.Serializable {

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
}
