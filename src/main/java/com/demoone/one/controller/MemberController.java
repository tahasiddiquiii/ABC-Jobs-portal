package com.demoone.one.controller;

import java.security.Principal;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demoone.one.dao.AppliedJobRepository;
import com.demoone.one.dao.JobRepository;
import com.demoone.one.dao.UserRepository;
import com.demoone.one.dto.AppliedJob;
import com.demoone.one.dto.Emails;
import com.demoone.one.dto.Job;
import com.demoone.one.dto.User;
import com.demoone.one.service.MyUserService;

@Controller

public class MemberController {

//	private static final Object  = null;

	

//	EmailService emailservice;
	
	@Autowired
	MyUserService userservive;

//	@Autowired
	
	
	@Autowired
	UserRepository userrepo;
	
	@Autowired
	AppliedJobRepository applyrepo;
	
	@Autowired
	JobRepository jobrepo;
	

	@GetMapping( value = "/")
	public String home()
	{
		return "Home";
	}
	
	@GetMapping( value = "/addL")
	public String addLearners(@ModelAttribute("taha") User us)
	{
		return "MemberRegistration";
	}
	
	@PostMapping( value = "/addMember")
	public String addL(@ModelAttribute("taha") User us)
	{
		userservive.addUser(us);
		System.out.println(us);
		return "thankyou";
	}
	@GetMapping( value="/showdata")
	public ModelAndView showlearner() {
		List<User>leardata=userservive.showAllUser();
		System.out.println(leardata);
		return new ModelAndView("showd","learnerinfo",leardata);
	}
	
	@GetMapping(value="/data") 
	public ModelAndView dislearner() {
		List<User> data=userservive.showAllUser();
		System.out.println(data);
		return new ModelAndView("ShowData","snow",data);
	}
	
	//LOGIN PAGE
		@GetMapping(value = "/login")
		public String loginpage() {
			
			return "LoginPage";
		}
	
		//FORGET PASSWORD PAGE
				@GetMapping(value = "/forget")
				public String forgetpasswordpage() {
					
					return "forgetpassword";
				}
		
	//serach

		@GetMapping(value = "/search")
	    public String searchLear(@ModelAttribute("searchd") User userId)
	    {
	    	
	    	return "SearchMember";
	    }
	    
	    @PostMapping(value="/sear")
	    public ModelAndView Serachleaner(@ModelAttribute("searchd") User userId) {
	    	Long searchID = userId.getUserId();
	    	User ll=userservive.showUser(searchID);
	    	System.out.println(ll);
	    	
	    	return new ModelAndView("SearchResult","arvse",ll);
	    	
	    }
		
	    @GetMapping(value="/searchM")
		public String membersearch(@ModelAttribute("searchd") User userId) {
			
			return "SearchMemberForMember";
		}
	    
	    @GetMapping(value = "/searchmember")
		public ModelAndView membesearch(@ModelAttribute("searchd") User username) {
	    	String searchuserName = username.getUserName();
	    	User mm=userservive.showUserm(searchuserName);
			System.out.println(mm);
			
	    	return new ModelAndView("profile","gigi",mm);
		}
		
		@GetMapping(value="/deletel")
	    public String deletePage() {
	    	return "DelMember";
	    }
	  		
	    @GetMapping(value="deletemember")
	    public String deleteUser(@RequestParam("userId") Long uid) {
	    	userservive.deleteData(uid);
	    	return "redirect:/showdata";
	    }
		
		@GetMapping(value="/admin")
		
		public ModelAndView admin_u(Model model, Principal principal, HttpSession session ) {
			final String currentUser = principal.getName();
			System.out.println("my User " + currentUser);
			User us = userservive.showUserm(currentUser);
			Long userid = us.getUserId();
			session.setAttribute("juser",userid);
			
			return new ModelAndView("AdminPage", "arv", us);
		}
		
		@GetMapping(value="/member")
		public ModelAndView member_u(Model model, Principal principal) {
			final String currentUser = principal.getName();
			System.out.println("my User " + currentUser);
			User us = userservive.showUserm(currentUser);
		
			return new ModelAndView("MemberPage", "arv", us);
		}
		
		
		@GetMapping(value="/profi")
	    public ModelAndView profilePage(Model model, Principal principal) {
			final String currentUser = principal.getName();
			System.out.println("my User " + currentUser);
			User us = userservive.showUserm(currentUser);
	    	return new ModelAndView("profile", "arv", us);
	    }
		

		//post job
			@GetMapping(value = "/postjob")
			public String postjob(@ModelAttribute("kay") Job js) {
				
				return "PostJobAdmin";
			}
			
			
			@PostMapping( value = "/addJob")
			public String addJ(@ModelAttribute("kay") Job js)
			{
				userservive.postjob(js);
				System.out.println(js);
				return "ShowAllJob";
			}
			
			
			//Apply PAGE
			@GetMapping(value = "/applyjobe")
			public ModelAndView applyjob() {
				List<Job>memjob=userservive.showAllJob();
				System.out.println(memjob);
				return new ModelAndView ("ApplyJobMember","Jobinfo",memjob);
//				return "ApplyJobMember";
			}
			

			@GetMapping( value="/showjob")
			public ModelAndView showjob() {
				List<Job>memjob=userservive.showAllJob();
				System.out.println(memjob);
				return new ModelAndView("ShowAllJob","Jobinfo",memjob);
			}
			
			@GetMapping(value = "/jobDetails/{jobId}")
			public String ViewJobsDetailsUser(@PathVariable long jobId, Principal princi, ModelMap model) {
				Job job = jobrepo.getById(jobId);
//				String authorname = job.getJobtitle();
				long id = job.getJobId();
				System.out.println("name of the job author is " + " id is " + id);
				System.out.println("jobs for user are " + job);
				model.addAttribute("job", job);		
				String name = princi.getName();		
//				User u = userrepo.findByUserName(name);
				System.out.println("User in the registered job are " + name);

				return "ViewJobsDetails";
			}
			
			@PostMapping(value = "/addjobseeker")
			public String saveJobSeekers(@ModelAttribute("jay") AppliedJob apply, Principal princi, Job jobses) {			
								
				String name = princi.getName();		
				User u = userrepo.findByUserName(name);
				System.out.println("User in the registered job are " + u);
								
				Long id = u.getUserId();
				apply.setUserId(id);
				
				Long jond = jobses.getJobId();
				apply.setJobId(jond);
						
				System.out.println("the id of the loged in user is " + id + " job id is " + jond); 				
				applyrepo.save(apply);
				return "ThankyouJob";
			}
		
		@GetMapping(value="/update/{searid}")
	    public ModelAndView updatePage(@PathVariable("searid") Long id) {
	    	User l = userservive.showUser(id);
	    	return new ModelAndView("UpdateMember","updatemember" , l);
	    }
	    
	    @GetMapping(value = "/dataupdate")
	    public String updateData(@RequestParam("userId") Long id,
	    		@RequestParam("userName") String Username,
				@RequestParam("password")  String Password,
				@RequestParam("firstname")  String Fname,
				@RequestParam("lastname")  String Lname,
				@RequestParam("address")  String Address,
				@RequestParam("email")  String Email,
				@RequestParam("phone")  String Phone) {
	    	System.out.println(id+" "+Username);

	    	
	    	User user = new User();
	    	user.setUserId(id);
	    	user.setUserName(Username);
	    	user.setFirstname(Fname);
	    	user.setLastname(Lname);
	    	user.setAddress(Address);
	    	user.setEmail(Email);
	    	user.setPhone(Phone);
	    	user.setPassword(Password);
	    	userservive.addUserma(user);
	    	return "redirect:/showdata";
	    }
	    
	    
	    @GetMapping(value = "/sendEmail")
		public String sendEmail(@ModelAttribute("emails") Emails email) {
			return "SendEmail";
		}

		@PostMapping(value = "/sendEmails")
		public String submitEmail(@Valid @ModelAttribute("emails") Emails email, BindingResult results) {
			
			String reciever_emails = email.getReciever_emails();
			String email_subject = email.getSubject();
			String content = email.getContent();
			System.out.print(reciever_emails);
			if (results.hasErrors()) {
				return "SendEmail";
			} else {
				
				String status = userservive.sendEmail(email);
				System.out.printf(reciever_emails +" "+ email_subject + " "+ content+"\n"+status);
				
				userservive.addEmail(email);
				return "ThankyouBulkEmail";
				}
		}
		
		
		
		
		}
	
