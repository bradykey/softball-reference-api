package com.softballreference.softballreferenceapi.model.repository;

import java.io.Serializable;

import javax.persistence.EntityManager;

import org.springframework.data.jpa.repository.support.JpaEntityInformation;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Custom implementation of the {@link CustomJpaRepository} interface that
 * exposes the {@literal refresh} method.
 * 
 * @author Brady
 *
 * @param <T>
 * @param <ID>
 */
public class CustomJpaRepositoryImpl<T, ID extends Serializable> extends SimpleJpaRepository<T, ID>
		implements CustomJpaRepository<T, ID> {

	private final EntityManager entityManager;

	public CustomJpaRepositoryImpl(JpaEntityInformation<T, ?> entityInformation, EntityManager entityManager) {
		super(entityInformation, entityManager);
		this.entityManager = entityManager;
	}

	/**
	 * Refreshes the {@literal T} entity from the database, overwriting any existing
	 * changes.
	 */
	@Override
	@Transactional
	public void refresh(T t) {
		entityManager.refresh(entityManager.merge(t));
	}
}
