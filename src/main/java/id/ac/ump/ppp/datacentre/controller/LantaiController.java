package id.ac.ump.ppp.datacentre.controller;

import java.security.Principal;

import javax.validation.Valid;

import id.ac.ump.ppp.datacentre.entities.Lantai;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.LantaiService;
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
public class LantaiController {

	@Autowired
	private UserService userService;

	@Autowired
	private LantaiService lantaiService;

	@ModelAttribute(value = "lantai")
	public Lantai constructLantai() {
		return new Lantai();
	}

	@RequestMapping(value = "/lantai", method = RequestMethod.GET)
	public String lantai(Principal principal, RedirectAttributes redirectAttributes) {
		String username = principal.getName();
		User user = userService.findOneByUsername(username);
		if (!user.isIdentity()) {
			redirectAttributes.addFlashAttribute("invalid", true);
			return "redirect:/pages/input/identity.html";
		} else if (user.isLantai()) {
			return "error403";
		}
		return "lantai";
	}

	@RequestMapping(value = "/lantai/save", method = RequestMethod.POST)
	public String lantaiSave(@Valid @ModelAttribute(value = "lantai") Lantai lantai, Principal principal, BindingResult result) {
		if (result.hasErrors()) {
			return "lantai";
		}
		String username = principal.getName();
		lantaiService.save(lantai, username);
		return "redirect:/";
	}
}
