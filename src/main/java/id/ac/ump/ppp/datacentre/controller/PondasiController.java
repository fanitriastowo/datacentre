package id.ac.ump.ppp.datacentre.controller;

import java.security.Principal;

import javax.validation.Valid;

import id.ac.ump.ppp.datacentre.entities.Pondasi;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.PondasiService;
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
public class PondasiController {

	@Autowired
	private UserService userService;

	@Autowired
	private PondasiService pondasiService;

	@ModelAttribute(value = "pondasi")
	public Pondasi constructPondasi() {
		return new Pondasi();
	}

	@RequestMapping(value = "/pondasi", method = RequestMethod.GET)
	public String pondasi(Principal principal, RedirectAttributes redirectAttributes) {
		String username = principal.getName();
		User user = userService.findOneByUsername(username);
		if (!user.isIdentity()) {
			redirectAttributes.addFlashAttribute("invalid", true);
			return "redirect:/pages/gedung/identity.html";
		} else if (user.isPondasi()) {
			return "error403";
		}
		return "pondasi";
	}

	@RequestMapping(value = "/pondasi/save", method = RequestMethod.POST)
	public String pondasiSave(@Valid @ModelAttribute(value = "pondasi") Pondasi pondasi, Principal principal, BindingResult result) {
		if (result.hasErrors()) {
			return "pondasi";
		}
		String username = principal.getName();
		pondasiService.save(pondasi, username);
		return "redirect:/";
	}

}
