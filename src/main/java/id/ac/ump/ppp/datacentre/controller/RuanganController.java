package id.ac.ump.ppp.datacentre.controller;

import java.security.Principal;

import javax.validation.Valid;

import id.ac.ump.ppp.datacentre.entities.Ruangan;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.RuanganService;
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
public class RuanganController {

	@Autowired
	private UserService userService;

	@Autowired
	private RuanganService ruanganService;

	@ModelAttribute(value = "ruangan")
	public Ruangan constructRuangan() {
		return new Ruangan();
	}

	@RequestMapping(value = "/ruangan", method = RequestMethod.GET)
	public String ruangan(Principal principal, RedirectAttributes redirectAttributes) {
		String username = principal.getName();
		User user = userService.findOneByUsername(username);
		if (!user.isIdentity()) {
			redirectAttributes.addFlashAttribute("invalid", true);
			return "redirect:/pages/input/identity.html";
		}
		return "ruangan";
	}

	@RequestMapping(value = "/ruangan/save", method = RequestMethod.POST)
	public String ruanganSave(@Valid @ModelAttribute(value = "ruangan") Ruangan ruangan, Principal principal, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "ruangan";
		}
		String username = principal.getName();
		ruanganService.save(ruangan, username);
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/pages/input/ruangan.html";
	}

}
