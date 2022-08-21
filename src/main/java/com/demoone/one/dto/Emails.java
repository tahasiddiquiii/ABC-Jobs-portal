package com.demoone.one.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

@Entity
public class Emails {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int emailId;	
	
	@NotBlank(message="Field cannot be left Blank")
	private String reciever_emails;
	
	@NotBlank(message="Field cannot be left Blank")
	private String subject;
	
	@NotBlank(message="Field cannot be left Blank")
	private String content;
	
	public Emails() {
		
	}

	public int getEmailId() {
		return emailId;
	}

	public void setEmailId(int emailId) {
		this.emailId = emailId;
	}

	public String getReciever_emails() {
		return reciever_emails;
	}

	public void setReciever_emails(String reciever_emails) {
		this.reciever_emails = reciever_emails;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Emails [emailId=" + emailId + ", reciever_emails=" + reciever_emails + ", subject=" + subject
				+ ", content=" + content + "]";
	}

	public Emails(int emailId, @NotBlank(message = "Field cannot be left Blank") String reciever_emails,
			@NotBlank(message = "Field cannot be left Blank") String subject,
			@NotBlank(message = "Field cannot be left Blank") String content) {
		super();
		this.emailId = emailId;
		this.reciever_emails = reciever_emails;
		this.subject = subject;
		this.content = content;
	}

	
	
}