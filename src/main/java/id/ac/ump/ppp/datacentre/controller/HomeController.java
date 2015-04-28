package id.ac.ump.ppp.datacentre.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/index")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/admin")
	public String homeAdmin() {
		return "homeAdmin";
	}
	
}
