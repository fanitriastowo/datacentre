package id.ac.ump.ppp.datacentre.service;

import id.ac.ump.ppp.datacentre.entities.Role;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.repositories.RoleRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository roleRepository;

	@Cacheable(value = "findAllUser")
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
		updated.update(user.getId(), user.getUsername(), encoder.encode(user.getPassword()), user.getPhone());
		userRepository.save(updated);
	}

	public List<User> findAllByRoleNotRoleBTS(Role role) {
		return userRepository.findAllByRoleNot(role);
	}

	@Transactional
	public void saveNewUser(User user) {
		Role roleGedung = roleRepository.findOneByName("ROLE_GEDUNG");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		user.setPassword(encoder.encode(user.getPassword()));
		user.setRole(roleGedung);
		user.setEnabled(true);
		user.setIdentity(false);
		user.setAir(false);
		user.setAtap(false);
		user.setKelistrikan(false);
		user.setLantai(false);
		user.setPlafon(false);
		user.setPondasi(false);
		user.setRuangan(false);
		user.setStruktur(false);
		userRepository.save(user);
	}

	@Transactional
	public void deleteUser(Integer id) {
		userRepository.delete(id);
	}

}
