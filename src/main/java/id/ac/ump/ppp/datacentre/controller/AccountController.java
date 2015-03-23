package id.ac.ump.ppp.datacentre.controller;

import java.security.Principal;

import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController {

	@Autowired
	private UserService userService;

	@RequestMapping("/account")
	public String account(Model model, Principal principal) {
		String username = principal.getName();
		User user = userService.findOneByUsername(username);
		model.addAttribute("user", user);
		return "account";
	}

	@RequestMapping(value = "/account/save", method = RequestMethod.POST)
	public String accountSave(@ModelAttribute(value = "user") User user) {
		userService.updateUser(user);
		return "redirect:/logout.html";
	}
}
