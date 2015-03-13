package id.ac.ump.ppp.datacentre.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/master")
public class GedungController {

	@RequestMapping("/gedung")
	public String gedung() {
		return "gedung";
	}
}
