package com.softballreference.softballreferenceapi.model.repository;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

/**
 * Custom {@link JpaRepository} interface that exposes the {@literal refresh}
 * method.
 * 
 * @author Brady
 *
 */
@NoRepositoryBean
public interface CustomJpaRepository<T, ID extends Serializable> extends JpaRepository<T, ID> {
	void refresh(T t);
}
