package com.softballreference.softballreferenceapi.model.dao;

import org.springframework.stereotype.Repository;

import com.softballreference.softballreferenceapi.model.entity.Game;
import com.softballreference.softballreferenceapi.model.repository.CustomJpaRepository;

@Repository
public interface GameDao extends CustomJpaRepository<Game, Long> {
	/**
	 * SimpleJpaRepository is the default implementation of the CrudRepository
	 * interface (which is a super interface of JpaRepository). It will give us all
	 * our default CRUD ops we need to access our entities.
	 *
	 * JpaRepository gives us filter-by-example functionality and the Example
	 * interface.
	 * 
	 * CustomJpaRepository is our custom implementation of the SimpleJpaRepository
	 * and exposes the "refresh" method so that we can force JPA to pull the latest
	 * version of an entity from the database. I also extends JpaRepository which
	 * gives us filter-by-example functionality and the Example interface.
	 */
}
