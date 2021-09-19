package com.softballreference.softballreferenceapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.softballreference.softballreferenceapi.model.repository.CustomJpaRepositoryImpl;

@SpringBootApplication
@EnableJpaRepositories(repositoryBaseClass = CustomJpaRepositoryImpl.class)
public class SoftballReferenceApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(SoftballReferenceApiApplication.class, args);
	}

}
