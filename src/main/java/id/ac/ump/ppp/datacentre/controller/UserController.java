package id.ac.ump.ppp.datacentre.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.UserService;

@Controller
@RequestMapping("/pages/admin")
public class UserController {

	@Autowired
	private UserService userService;

	@ModelAttribute(value = "user")
	public User construct() {
		return new User();
	}

	@RequestMapping("/users")
	public String users(Model model) {
		model.addAttribute("users", userService.findAllByRoleGedung());
		return "users";
	}

	@RequestMapping(value = "/users/save", method = RequestMethod.POST)
	public String userSave(@ModelAttribute(value = "user") User user) {
		userService.saveNewUser(user);
		return "redirect:/pages/admin/users.html";
	}

	@RequestMapping(value = "/users/delete/{id}")
	public String userDelete(@PathVariable Integer id) {
		userService.deleteUser(id);
		return "redirect:/pages/admin/users.html";
	}

	@RequestMapping(value = "/users/cetak/usersPdf")
	public String cetakUserList(ModelMap modelMap) {
		modelMap.addAttribute("dataSource", userService.findAllByRoleGedung());
		return "usersPdf";
	}

}
