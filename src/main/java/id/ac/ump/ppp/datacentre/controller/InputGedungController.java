package id.ac.ump.ppp.datacentre.controller;

import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.service.GedungService;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/pages/input")
public class InputGedungController {
	
	@Autowired
	private GedungService gedungService;
	
	@ModelAttribute(value = "gedung")
	public Gedung construct() {
		return new Gedung();
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		binder.registerCustomEditor(Date.class, "tahunBerdiri", new CustomDateEditor(dateFormat, false));
		binder.registerCustomEditor(Date.class, "tahunSurvey", new CustomDateEditor(dateFormat, false));
	}

	@RequestMapping(value = "/identity", method = RequestMethod.GET)
	public String inputGedung(Model model) {
		return "identity";
	}

	@RequestMapping(value = "/identity/save", method = RequestMethod.POST)
	public String save(@Valid @ModelAttribute(value = "gedung") Gedung gedung, Principal principal, BindingResult result, RedirectAttributes redirectAttributes ) {
		if (result.hasErrors()) {
			return "identity";
		}
		String username = principal.getName();
		gedungService.save(gedung, username);
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/pages/input/identity.html";
	}
}
