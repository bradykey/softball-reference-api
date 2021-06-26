package com.softballreference.softballreferenceapi.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Lookup Table (LUT) for the Players that play on Teams in Leagues.
 */
@Entity
@Table(name = "Player")
public class Player implements java.io.Serializable {

    /* PK */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id")
    private Long id;

    /* PROPERTIES */
    @Column(name = "Name")
    private String name;
}
