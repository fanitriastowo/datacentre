package id.ac.ump.ppp.datacentre.controller;

import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.service.RoleService;
import id.ac.ump.ppp.datacentre.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/master")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;

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
		return "redirect:/master/users.html";
	}

	@RequestMapping(value = "/users/delete/{id}")
	public String userDelete(@PathVariable Integer id) {
		userService.deleteUser(id);
		return "redirect:/master/users.html";
	}

	@RequestMapping(value = "/users/cetak/usersPdf")
	public String cetakUserList(ModelMap modelMap) {
		modelMap.addAttribute("dataSource", userService.findAllByRoleGedung());
		return "usersPdf";
	}

}
