package id.ac.ump.ppp.datacentre.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController  {
	
	@RequestMapping("/index")
	public String login() {
		return "login";
	}
}
