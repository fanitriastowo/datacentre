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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class GedungController {

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

	@RequestMapping(value = "/master/gedung", method = RequestMethod.GET)
	public String gedung(Model model) {
		model.addAttribute("gedungList", gedungService.findAll());
		return "gedung";
	}

	@RequestMapping("/master/gedung/delete/{id}")
	public String delete(@PathVariable(value = "id") Integer id) {
		gedungService.delete(id);
		return "redirect:/master/gedung.html";
	}

	@RequestMapping(value = "/master/gedung/detail/{id}", method = RequestMethod.GET)
	public String gedungDetail(@PathVariable(value = "id") Integer id, Model model) {
		model.addAttribute("gedungDetail", gedungService.findOne(id));
		return "gedungDetail";
	}

	@RequestMapping(value = "/gedung/inputGedung", method = RequestMethod.GET)
	public String inputGedung(Model model) {
		return "inputGedung";
	}

	@RequestMapping(value = "/gedung/inputGedung/save", method = RequestMethod.POST)
	public String save(@Valid @ModelAttribute(value = "gedung") Gedung gedung, Principal principal, BindingResult result, RedirectAttributes redirectAttributes ) {
		if (result.hasErrors()) {
			return "inputGedung";
		}
		String username = principal.getName();
		gedungService.save(gedung, username);
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/gedung/inputGedung.html";
	}

}
