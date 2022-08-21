package com.demoone.one.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demoone.one.dto.User;



public interface UserRepository extends JpaRepository<User, Long> {
	User findByUserName(String name);

}
