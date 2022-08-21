package com.demoone.one.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demoone.one.dto.Job;



public interface JobRepository extends JpaRepository<Job, Long> {

//	User getJobTitle(String jtitle);
}
