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
 * Lookup Table (LUT) for the Teams stats are captured for.
 */
@Entity
@Table(name = "Team")
public class Team implements java.io.Serializable {

    /*
     * Generated this with the following @
     * ...\softball-reference-api\target\classes:
     * 
     * >> serialver -classpath "./"
     * com.softballreference.softballreferenceapi.model.entity.Team
     */
    private static final long serialVersionUID = 6122459080945323319L;

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
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "team")
    private Set<TeamLeague> teamLeagues;
}
