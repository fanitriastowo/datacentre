package id.ac.ump.ppp.datacentre.controller;

import java.security.Principal;

import javax.validation.Valid;

import id.ac.ump.ppp.datacentre.entities.Kelistrikan;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.KelistrikanService;
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
public class KelistrikanController {

	@Autowired
	private UserService userService;

	@Autowired
	private KelistrikanService kelistrikanService;

	@ModelAttribute(value = "kelistrikan")
	public Kelistrikan constructKelistrikan() {
		return new Kelistrikan();
	}

	@RequestMapping(value = "/kelistrikan", method = RequestMethod.GET)
	public String kelistrikan(Principal principal, RedirectAttributes redirectAttributes) {
		String username = principal.getName();
		User user = userService.findOneByUsername(username);
		if (!user.isIdentity()) {
			redirectAttributes.addFlashAttribute("invalid", true);
			return "redirect:/pages/gedung/identity.html";
		} else if (user.isKelistrikan()) {
			return "error403";
		}
		return "kelistrikan";
	}

	@RequestMapping(value = "/kelistrikan/save", method = RequestMethod.POST)
	public String kelistrikanSave(@Valid @ModelAttribute(value = "kelistrikan") Kelistrikan kelistrikan, Principal principal, BindingResult result) {
		if (result.hasErrors()) {
			return "kelistrikan";
		}
		String username = principal.getName();
		kelistrikanService.save(kelistrikan, username);
		return "redirect:/";
	}

}
