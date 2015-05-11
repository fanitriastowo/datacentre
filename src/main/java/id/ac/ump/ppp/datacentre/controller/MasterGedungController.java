package id.ac.ump.ppp.datacentre.controller;

import id.ac.ump.ppp.datacentre.service.GedungService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/master/gedung")
public class MasterGedungController {

	@Autowired
	private GedungService gedungService;

	@RequestMapping(method = RequestMethod.GET)
	public String gedung(Model model) {
		model.addAttribute("gedungList", gedungService.findAll());
		return "gedung";
	}

	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable(value = "id") Integer id) {
		gedungService.delete(id);
		return "redirect:/master/gedung.html";
	}

	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String gedungDetail(@PathVariable(value = "id") Integer id, Model model) {
		model.addAttribute("gedungDetail", gedungService.findOne(id));
		return "gedungDetail";
	}

	@RequestMapping(value = "/cetak/gedung", method = RequestMethod.GET)
	public String gedungDetail(ModelMap modelMap) {
		modelMap.addAttribute("dataSource", gedungService.findAll());
		return "gedungPdf";
	}
}
