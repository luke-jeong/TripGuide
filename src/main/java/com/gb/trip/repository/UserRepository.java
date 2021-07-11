package com.gb.trip.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.gb.trip.model.User;

public interface UserRepository extends JpaRepository<User, Integer>{


	@Query(value="select * from user where username = ?1", nativeQuery = true)
	User findByUsernameVaild(String username);


	Optional<User> findByUsername(String username);
}
