package id.ac.ump.ppp.datacentre.service;

import java.util.ArrayList;
import java.util.List;

import id.ac.ump.ppp.datacentre.entities.Role;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.repositories.RoleRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class InitDbService {

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private UserRepository userRepository;

	@PostConstruct
	public void initDb() {
		Role roleAdmin = new Role();
		roleAdmin.setName("ROLE_ADMIN");
		roleRepository.saveAndFlush(roleAdmin);

		List<Role> roles = new ArrayList<>();
		roles.add(roleAdmin);

		User userAdmin = new User();
		userAdmin.setUsername("admin");
		userAdmin.setPassword("admin");
		userAdmin.setEmail("fani.triastowo@gmail.com");
		userAdmin.setRoles(roles);
		userRepository.save(userAdmin);

	}
}
