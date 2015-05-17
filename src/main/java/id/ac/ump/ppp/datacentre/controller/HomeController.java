package id.ac.ump.ppp.datacentre.controller;

import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.UserService;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	@RequestMapping("/index")
	public String home(Model model, Principal principal) {
		String username = principal.getName();
		User user = userService.findOneByUsername(username);
		model.addAttribute("users", userService.findAllByRoleGedung());
		model.addAttribute("user", user);
		return "home";
	}
}