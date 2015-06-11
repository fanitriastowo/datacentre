package id.ac.ump.ppp.datacentre.controller;

import java.security.Principal;

import javax.validation.Valid;

import id.ac.ump.ppp.datacentre.entities.Plafon;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.PlafonService;
import id.ac.ump.ppp.datacentre.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/pages/gedung")
public class PlafonController {

	@Autowired
	private UserService userService;

	@Autowired
	private PlafonService plafonService;

	@ModelAttribute(value = "plafon")
	public Plafon constructPlafon() {
		return new Plafon();
	}

	@RequestMapping(value = "/plafon", method = RequestMethod.GET)
	public String plafon(Principal principal, RedirectAttributes redirectAttributes) {
		String username = principal.getName();
		User user = userService.findOneByUsername(username);
		if (!user.isIdentity()) {
			redirectAttributes.addFlashAttribute("invalid", true);
			return "redirect:/pages/gedung/identity.html";
		} else if (user.isPlafon()) {
			return "error403";
		}
		return "plafon";
	}

	@RequestMapping(value = "/plafon/save", method = RequestMethod.POST)
	public String plafonSave(@Valid @ModelAttribute(value = "plafon") Plafon plafon, Principal principal, BindingResult result) {
		if (result.hasErrors()) {
			return "plafon";
		}
		String username = principal.getName();
		plafonService.save(plafon, username);
		return "redirect:/";
	}
}
