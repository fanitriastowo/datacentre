package id.ac.ump.ppp.datacentre.service;

import id.ac.ump.ppp.datacentre.entities.Role;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.repositories.RoleRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository roleRepository;

	public List<User> findAll() {
		return userRepository.findAll();
	}

	public User findOneByUsername(String username) {
		return userRepository.findOneByUsername(username);
	}

	@Transactional
	public void updateUser(User user) {
		User updated = userRepository.findOne(user.getId());
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		updated.update(user.getId(), user.getUsername(), encoder.encode(user.getPassword()), user.getPhone(), updated.isEnabled(), updated.getRoles());
		userRepository.save(updated);
	}

	public List<User> findAllByRolesNotRoleAdmin(Role role) {
		return userRepository.findAllByRolesNot(role);
	}

	public void saveNewUser(User user) {
		Role roleUser = roleRepository.findOneByName("ROLE_USER");
		List<Role> roles = new ArrayList<>();
		roles.add(roleUser);
		user.setRoles(roles);
		user.setEnabled(true);
		userRepository.save(user);
	}

}
