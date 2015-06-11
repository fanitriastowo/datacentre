package id.ac.ump.ppp.datacentre.controller;

import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.GedungService;
import id.ac.ump.ppp.datacentre.service.UserService;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/pages/gedung")
public class IdentityController {

	@Autowired
	private UserService userService;

	@Autowired
	private GedungService gedungService;

	@ModelAttribute(value = "gedung")
	public Gedung constructGedung() {
		return new Gedung();
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		binder.registerCustomEditor(Date.class, "tahunBerdiri", new CustomDateEditor(dateFormat, false));
		binder.registerCustomEditor(Date.class, "tahunSurvey", new CustomDateEditor(dateFormat, false));
	}

	@RequestMapping(value = "/identity", method = RequestMethod.GET)
	public String identity(Principal principal) {
		String username = principal.getName();
		User user = userService.findOneByUsername(username);
		if (user.isIdentity()) {
			return "error403";
		}
		return "identity";
	}

	@RequestMapping(value = "/identity/save", method = RequestMethod.POST)
	public String identitySave(@Valid @ModelAttribute(value = "gedung") Gedung gedung, Principal principal, BindingResult result) {
		if (result.hasErrors()) {
			return "identity";
		}
		String username = principal.getName();
		gedungService.save(gedung, username);
		return "redirect:/";
	}
}
