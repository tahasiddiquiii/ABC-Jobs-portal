package com.demoone.one.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="jobsapplied")
public class AppliedJob {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="appliedId")
	private long appliedId;
	
	@Column(name="userId")
	private long userId;
	
	@Column(name="jobId")
	private long jobId;
	
	public AppliedJob() {
		
	}

	public long getAppliedId() {
		return appliedId;
	}

	public void setAppliedId(long appliedId) {
		this.appliedId = appliedId;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public long getJobId() {
		return jobId;
	}

	public void setJobId(long jobId) {
		this.jobId = jobId;
	}

	@Override
	public String toString() {
		return "AppliedJob [appliedId=" + appliedId + ", userId=" + userId + ", jobId=" + jobId + "]";
	}

	public AppliedJob(long appliedId, long userId, long jobId) {
		super();
		this.appliedId = appliedId;
		this.userId = userId;
		this.jobId = jobId;
	}

	
	
}
