package id.ac.ump.ppp.datacentre.controller;

import id.ac.ump.ppp.datacentre.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccountController {

	@Autowired
	private UserService userService;

	@RequestMapping("/account")
	public String account() {
		return "account";
	}
}
