package com.demoone.one.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demoone.one.dto.Emails;


public interface EmailRepository extends JpaRepository<Emails, Long> {

}
