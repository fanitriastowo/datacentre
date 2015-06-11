package id.ac.ump.ppp.datacentre.controller;

import id.ac.ump.ppp.datacentre.service.GedungService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/pages/akademik")
public class AkademikController {

	@Autowired
	private GedungService gedungService;

	@RequestMapping(method = RequestMethod.GET)
	public String gedung(Model model) {
		model.addAttribute("gedungList", gedungService.findAll());
		return "gedungAkademik";
	}
	
	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String gedungDetail(@PathVariable(value = "id") Integer id, Model model) {
		model.addAttribute("gedungDetail", gedungService.findOne(id));
		return "gedungDetailAkademik";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable(value = "id") Integer id) {
		gedungService.delete(id);
		return "redirect:/pages/akademik.html";
	}
}
