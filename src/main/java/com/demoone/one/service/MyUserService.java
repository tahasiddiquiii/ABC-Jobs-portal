package com.demoone.one.service;

import java.util.List;

import com.demoone.one.dto.AppliedJob;
import com.demoone.one.dto.Emails;
import com.demoone.one.dto.Job;
import com.demoone.one.dto.User;

public interface MyUserService {
	
	public String addUser(User us);
	public String updateUser(User us);
	public List<User> showAllUser();
	public User showUser(Long id);
	public User showUserm(String username );
	public void deleteData(Long id);
	public String addUserma(User us);
	public List<Job> showAllJob();
	public String postjob(Job js);
	public String jobSeeker(AppliedJob apply);
	public String sendEmail(Emails email);
	public void addEmail(Emails email);
}
