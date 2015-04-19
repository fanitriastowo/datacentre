package id.ac.ump.ppp.datacentre.controller;

import id.ac.ump.ppp.datacentre.entities.Air;
import id.ac.ump.ppp.datacentre.entities.Atap;
import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.Kelistrikan;
import id.ac.ump.ppp.datacentre.service.AirService;
import id.ac.ump.ppp.datacentre.service.AtapService;
import id.ac.ump.ppp.datacentre.service.GedungService;
import id.ac.ump.ppp.datacentre.service.KelistrikanService;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/pages/input")
public class InputGedungController {

	@Autowired
	private GedungService gedungService;

	@Autowired
	private AirService airService;

	@Autowired
	private AtapService atapService;
    
	@Autowired
	private KelistrikanService kelistrikanService;

	@ModelAttribute(value = "gedung")
	public Gedung constructGedung() {
		return new Gedung();
	}

	@ModelAttribute(value = "air")
	public Air constructAir() {
		return new Air();
	}

	@ModelAttribute(value = "atap")
	public Atap constructAtap() {
		return new Atap();
	}
    
    @ModelAttribute(value = "kelistrikan")
	public Kelistrikan constructKelistrikan() {
		return new Kelistrikan();
	}


	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		binder.registerCustomEditor(Date.class, "tahunBerdiri", new CustomDateEditor(dateFormat, false));
		binder.registerCustomEditor(Date.class, "tahunSurvey", new CustomDateEditor(dateFormat, false));
	}

	// IDENTITY
	@RequestMapping(value = "/identity", method = RequestMethod.GET)
	public String identity() {
		return "identity";
	}

	@RequestMapping(value = "/identity/save", method = RequestMethod.POST)
	public String identitySave(@Valid @ModelAttribute(value = "gedung") Gedung gedung, Principal principal, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "identity";
		}
		String username = principal.getName();
		gedungService.save(gedung, username);
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/pages/input/identity.html";
	}

	// ATAP
	@RequestMapping(value = "/atap", method = RequestMethod.GET)
	public String atap() {
		return "atap";
	}

	@RequestMapping(value = "/atap/save", method = RequestMethod.POST)
	public String atapSave(@Valid @ModelAttribute(value = "atap") Atap atap, Principal principal, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "atap";
		}
		String username = principal.getName();
		atapService.save(atap, username);
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/pages/input/atap.html";
	}

	// PLAFON
	@RequestMapping(value = "/plafon", method = RequestMethod.GET)
	public String plafon() {
		return "plafon";
	}

	@RequestMapping(value = "/plafon/save", method = RequestMethod.POST)
	public String plafonSave(@Valid @ModelAttribute(value = "gedung") Gedung gedung, Principal principal, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "plafon";
		}
		String username = principal.getName();
		gedungService.save(gedung, username);
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/pages/input/plafon.html";
	}

	// PONDASI
	@RequestMapping(value = "/pondasi", method = RequestMethod.GET)
	public String pondasi() {
		return "pondasi";
	}

	@RequestMapping(value = "/pondasi/save", method = RequestMethod.POST)
	public String pondasiSave(@Valid @ModelAttribute(value = "gedung") Gedung gedung, Principal principal, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "pondasi";
		}
		String username = principal.getName();
		gedungService.save(gedung, username);
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/pages/input/pondasi.html";
	}

	// RUANGAN
	@RequestMapping(value = "/ruangan", method = RequestMethod.GET)
	public String ruangan() {
		return "ruangan";
	}

	@RequestMapping(value = "/ruangan/save", method = RequestMethod.POST)
	public String ruanganSave(@Valid @ModelAttribute(value = "gedung") Gedung gedung, Principal principal, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "ruangan";
		}
		String username = principal.getName();
		gedungService.save(gedung, username);
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/pages/input/ruangan.html";
	}

	// KELISTRIKAN
	@RequestMapping(value = "/kelistrikan", method = RequestMethod.GET)
	public String kelistrikan() {
		return "kelistrikan";
	}

	@RequestMapping(value = "/kelistrikan/save", method = RequestMethod.POST)
	public String kelistrikanSave(@Valid @ModelAttribute(value = "kelistrikan") Kelistrikan kelistrikan, Principal principal, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "kelistrikan";
		}
		String username = principal.getName();
		kelistrikanService.save(kelistrikan, username);
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/pages/input/kelistrikan.html";
	}

	// STRUKTUR
	@RequestMapping(value = "/struktur", method = RequestMethod.GET)
	public String struktur() {
		return "struktur";
	}

	@RequestMapping(value = "/struktur/save", method = RequestMethod.POST)
	public String strukturSave(@Valid @ModelAttribute(value = "gedung") Gedung gedung, Principal principal, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "struktur";
		}
		String username = principal.getName();
		gedungService.save(gedung, username);
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/pages/input/struktur.html";
	}

	// LANTAI
	@RequestMapping(value = "/lantai", method = RequestMethod.GET)
	public String lantai() {
		return "lantai";
	}

	@RequestMapping(value = "/lantai/save", method = RequestMethod.POST)
	public String lantaiSave(@Valid @ModelAttribute(value = "gedung") Gedung gedung, Principal principal, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "lantai";
		}
		String username = principal.getName();
		gedungService.save(gedung, username);
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/pages/input/lantai.html";
	}

	// AIR
	@RequestMapping(value = "/air", method = RequestMethod.GET)
	public String air() {
		return "air";
	}

	@RequestMapping(value = "/air/save", method = RequestMethod.POST)
	public String airSave(@Valid @ModelAttribute(value = "air") Air air, Principal principal, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "air";
		}
		String username = principal.getName();
		airService.save(air, username);
		redirectAttributes.addFlashAttribute("success", true);
		return "redirect:/pages/input/air.html";
	}
}
