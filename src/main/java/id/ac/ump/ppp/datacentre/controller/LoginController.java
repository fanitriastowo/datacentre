package id.ac.ump.ppp.datacentre.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginController {

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/loginfail")
	public String login(RedirectAttributes redirectAttributes) {
		redirectAttributes.addFlashAttribute("success", false);
		return "redirect:/login.html";
	}
}
