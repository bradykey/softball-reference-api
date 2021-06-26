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
 * Association Table (AT) that maps Team to League
 */
@Entity
@Table(name = "TeamLeague")
public class TeamLeague implements java.io.Serializable {

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
}
