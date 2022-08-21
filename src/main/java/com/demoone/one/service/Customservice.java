package com.demoone.one.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.demoone.one.dao.UserRepository;
import com.demoone.one.dto.User;
import com.demoone.one.service.security.ApplicationUserDetail;




@Service
public class Customservice implements UserDetailsService{
    @Autowired
	UserRepository userrepo;
    User user;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		user=userrepo.findByUserName(username);
		if(user==null) {
			System.out.println("User name is Invalid");
		}
		return new ApplicationUserDetail(user);
	}


}
