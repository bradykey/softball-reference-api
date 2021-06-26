package com.softballreference.softballreferenceapi.model.dao;

import com.softballreference.softballreferenceapi.model.entity.Game;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GameDao extends JpaRepository<Game, Long> {
    /**
     * SimpleJpaRepository is the default implementation of the CrudRepository
     * interface (which is a super interface of JpaRepository). It will give us all
     * our default CRUD ops we need to access our entities.
     *
     * JpaRepository gives us filter-by-example functionality and the Example
     * interface.
     */
}
