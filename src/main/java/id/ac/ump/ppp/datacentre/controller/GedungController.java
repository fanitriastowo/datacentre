package id.ac.ump.ppp.datacentre.controller;

import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.service.GedungService;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/master")
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

	@RequestMapping("/gedung")
	public String gedung(Model model) {
		model.addAttribute("gedungList", gedungService.findAll());
		return "gedung";
	}

	@RequestMapping("/gedung/save")
	public String save(@ModelAttribute(value = "gedung") Gedung gedung) {
		gedungService.save(gedung);
		return "redirect:/master/gedung.html";
	}
	
	@RequestMapping("/gedung/delete/{id}")
	public String delete(@PathVariable(value = "id") Integer id) {
		gedungService.delete(id);
		return "redirect:/master/gedung.html";
	}
}
