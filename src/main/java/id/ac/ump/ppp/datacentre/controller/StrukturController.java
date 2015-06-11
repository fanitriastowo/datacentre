package id.ac.ump.ppp.datacentre.controller;

import java.security.Principal;

import javax.validation.Valid;

import id.ac.ump.ppp.datacentre.entities.Struktur;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.StrukturService;
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
public class StrukturController {

	@Autowired
	private UserService userService;

	@Autowired
	private StrukturService strukturService;

	@ModelAttribute(value = "struktur")
	public Struktur constructStruktur() {
		return new Struktur();
	}

	@RequestMapping(value = "/struktur", method = RequestMethod.GET)
	public String struktur(Principal principal, RedirectAttributes redirectAttributes) {
		String username = principal.getName();
		User user = userService.findOneByUsername(username);
		if (!user.isIdentity()) {
			redirectAttributes.addFlashAttribute("invalid", true);
			return "redirect:/pages/gedung/identity.html";
		} else if (user.isStruktur()) {
			return "error403";
		}
		return "struktur";
	}

	@RequestMapping(value = "/struktur/save", method = RequestMethod.POST)
	public String strukturSave(@Valid @ModelAttribute(value = "struktur") Struktur struktur, Principal principal, BindingResult result) {
		if (result.hasErrors()) {
			return "struktur";
		}
		String username = principal.getName();
		strukturService.save(struktur, username);
		return "redirect:/";
	}

}
