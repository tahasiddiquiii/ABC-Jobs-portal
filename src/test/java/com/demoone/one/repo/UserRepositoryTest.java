package com.demoone.one.repo;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.demoone.one.dao.UserRepository;
import com.demoone.one.dto.User;
import com.demoone.one.service.MyUserService;

@SpringBootTest
class UserRepositoryTest {
	

	
	@Autowired
	MyUserService userservive;

	@Test
	void testFindByUserName() {
		
		User user= new User();
		
		user.setUserName("oman");
		user.setPassword("1234");
		user.setFirstname("omar");
		user.setLastname("khan");
		user.setAddress("california, south africa");
		user.setEmail("omar10@gmail.com");
		user.setPhone("829881292112");
		
		
		userservive.addUser(user);
		System.out.println("created rec successfully");
		
		
//		Boolean  =
//		assertThat(actualResult).isTrue();
//	
		
		
		
	}

}
