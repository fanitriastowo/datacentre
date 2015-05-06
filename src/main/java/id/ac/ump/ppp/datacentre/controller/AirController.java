package id.ac.ump.ppp.datacentre.controller;

import java.security.Principal;

import javax.validation.Valid;

import id.ac.ump.ppp.datacentre.entities.Air;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.AirService;
import id.ac.ump.ppp.datacentre.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/pages/input")
public class AirController {

	@Autowired
	private UserService userService;

	@Autowired
	private AirService airService;

	@ModelAttribute(value = "air")
	public Air constructAir() {
		return new Air();
	}

	@RequestMapping(value = "/air", method = RequestMethod.GET)
	public String air(Principal principal, RedirectAttributes redirectAttributes) {
		String username = principal.getName();
		User user = userService.findOneByUsername(username);
		if (!user.isIdentity()) {
			redirectAttributes.addFlashAttribute("invalid", true);
			return "redirect:/pages/input/identity.html";
		} else if (user.isAir()) {
			return "error403";
		}
		return "air";
	}

	@RequestMapping(value = "/air/save", method = RequestMethod.POST)
	public String airSave(@Valid @ModelAttribute(value = "air") Air air, Principal principal, BindingResult result) {
		if (result.hasErrors()) {
			return "air";
		}
		String username = principal.getName();
		airService.save(air, username);
		return "redirect:/";
	}
}
