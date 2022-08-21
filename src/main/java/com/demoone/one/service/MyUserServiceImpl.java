package com.demoone.one.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.demoone.one.dao.AppliedJobRepository;
import com.demoone.one.dao.EmailRepository;
import com.demoone.one.dao.JobRepository;
import com.demoone.one.dao.UserRepository;
import com.demoone.one.dto.AppliedJob;
import com.demoone.one.dto.Emails;
import com.demoone.one.dto.Job;
import com.demoone.one.dto.User;



@Service
public class MyUserServiceImpl implements MyUserService {
	private PasswordEncoder passwordencoder;
	@Autowired
	UserRepository userrepo;
	User user;
	
	@Autowired
	JobRepository jobrepo;
	
	@Autowired
	AppliedJobRepository applyrepo;
	
	@Autowired
	private EmailRepository emailrepo;
	
	@Autowired
	private JavaMailSender mailSender;
	
	
	List<User> showAllUser=new ArrayList<User>();

	@Autowired
	public MyUserServiceImpl(PasswordEncoder encoder) {
		// TODO Auto-generated constructor stub
		this.passwordencoder=encoder;
	}
	
	@Override
	public String addUser(User us) {
		// TODO Auto-generated method stub
	
		us.setRole("USER");
		us.setPassword(passwordencoder.encode(us.getPassword()));
		 userrepo.save(us);
		 return "DATA ADDED";
	}
	
	@Override
	public String addUserma(User us) {
		// TODO Auto-generated method stub
	
		us.setRole("USER");
//		us.setPassword(passwordencoder.encode(us.getPassword()));
		 userrepo.save(us);
		 return "DATA ADDED";
	}
	
	

	@Override
	public String updateUser(User us) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<User> showAllUser() {
		// TODO Auto-generated method stub
		List<User> allData = userrepo.findAll();
		return allData;
	}
	
	@Override
	public User showUser(Long id ) {
		// TODO Auto-generated method stub
		Optional<User> learn = userrepo.findById(id);
		User l=learn.get();
		
		return l;
	
	}
	
	@Override
	public User showUserm(String username ) {
		// TODO Auto-generated method stub
		user = userrepo.findByUserName(username);
		
		return user;
	
	}
	
	
	@Override
	public void deleteData(Long id) {
		// TODO Auto-generated method stub
		userrepo.deleteById(id);
	}
	
	@Override
	public String postjob(Job js) {
		// TODO Auto-generated method stub
		
		 jobrepo.save(js);
		 return "DATA ADDED";
	}
	
	@Override
	public List<Job> showAllJob() {
		// TODO Auto-generated method stub
		List<Job> allJob = jobrepo.findAll();
		return allJob;
	}
	
	@Override
	public String jobSeeker(AppliedJob apply) {
		// TODO Auto-generated method stub
	
		applyrepo.save(apply);
		 return "DATA ADDED";
	}
	
	
	
		

		
//		@Autowired
//		private JavaMailSender mailSender;
//
////		Jobs job = new Jobs();
//
//		@Autowired
//		private EmailRepository emailrepo;
//		
//		@Autowired
//		JobRepository jobrepo;

		public String sendEmail(Emails email) {
			try {
				SimpleMailMessage message = new SimpleMailMessage();

				List<String> emails_jobs = new ArrayList<String>();

				String[] job_email = email.getReciever_emails().split(",");

				emails_jobs = Arrays.asList(job_email);

				for (String mail_name : emails_jobs) {
					System.out.println("mail will work " + mail_name);

					message.setFrom("tahasiddiquiii10@gmail.com");
					message.setTo(mail_name);

					System.out.print(mail_name);

					message.setText(email.getContent());
					message.setSubject(email.getSubject());

					mailSender.send(message);

				}
				return "Email sent successfully";

			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}

		public void addEmail(Emails email) {
			emailrepo.save(email);
		}
	}
	
	

