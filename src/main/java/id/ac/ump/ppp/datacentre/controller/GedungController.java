package id.ac.ump.ppp.datacentre.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import id.ac.ump.ppp.datacentre.service.GedungService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/master")
public class GedungController {

	@Autowired
	private GedungService gedungService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MMMM-yyyy");
		binder.registerCustomEditor(Date.class, "tahunBerdiri", new CustomDateEditor(dateFormat, false));
		binder.registerCustomEditor(Date.class, "tahunSurvey", new CustomDateEditor(dateFormat, false));
	}

	@RequestMapping("/gedung")
	public String gedung(Model model) {
		model.addAttribute("gedungList", gedungService.findAll());
		return "gedung";
	}
}
