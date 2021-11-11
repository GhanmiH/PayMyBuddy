package com.PayMyBuddy.Controller;

import javax.annotation.security.RolesAllowed;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

	@RequestMapping("/**")
	@RolesAllowed("User")
	public String getUser() {
		return "Welcome, User";
	}

	@RequestMapping("/admin")
	@RolesAllowed("ADMIN")
	public String getAdmin() {
		return "Welcome, Admin";
	}
	@RequestMapping("/***")
	public String getUserGithub() {
		return "Welcome, Github user";
	}
	@RequestMapping("/*")
	public String getUserGoogle() {
		return "Welcome, Google user";
	}

}
