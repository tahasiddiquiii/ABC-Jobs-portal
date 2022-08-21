package com.demoone.one.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Job {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long jobId;
	private String jobtitle;
	private String company;
	private String jobdescription;
	
	public Job() {
		
	}
	
	public Long getJobId() {
		return jobId;
	}
	public void setJobId(Long jobId) {
		this.jobId = jobId;
	}
	public String getJobtitle() {
		return jobtitle;
	}
	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getJobdescription() {
		return jobdescription;
	}
	public void setJobdescription(String jobdescription) {
		this.jobdescription = jobdescription;
	}
	
	@Override
	public String toString() {
		return "Job [jobId=" + jobId + ", jobtitle=" + jobtitle + ", company=" + company + ", jobdescription="
				+ jobdescription + "]";
	}
	
	public Job(Long jobId, String jobtitle, String company, String jobdescription) {
		super();
		this.jobId = jobId;
		this.jobtitle = jobtitle;
		this.company = company;
		this.jobdescription = jobdescription;
	}

	
	
	}



