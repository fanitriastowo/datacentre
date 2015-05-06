package id.ac.ump.ppp.datacentre.controller;

import id.ac.ump.ppp.datacentre.entities.Atap;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.AtapService;
import id.ac.ump.ppp.datacentre.service.UserService;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/pages/input")
public class AtapController {

	@Autowired
	private UserService userService;

	@Autowired
	private AtapService atapService;

	@ModelAttribute(value = "atap")
	public Atap constructAtap() {
		return new Atap();
	}

	@RequestMapping(value = "/atap", method = RequestMethod.GET)
	public String atap(Principal principal, RedirectAttributes redirectAttributes) {
		String username = principal.getName();
		User user = userService.findOneByUsername(username);
		if (!user.isIdentity()) {
			redirectAttributes.addFlashAttribute("invalid", true);
			return "redirect:/pages/input/identity.html";
		} else if (user.isAtap()) {
			return "error403";
		}
		return "atap";
	}

	@RequestMapping(value = "/atap/save", method = RequestMethod.POST)
	public String atapSave(@Valid @ModelAttribute(value = "atap") Atap atap, Principal principal, BindingResult result) {
		if (result.hasErrors()) {
			return "atap";
		}
		String username = principal.getName();
		atapService.save(atap, username);
		return "redirect:/";
	}
}
