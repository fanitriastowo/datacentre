package id.ac.ump.ppp.datacentre.service;

import java.util.List;

import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.repositories.GedungRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GedungService {

	@Autowired
	private GedungRepository gedungRepository;

	@Autowired
	private UserRepository userRepository;

	public List<Gedung> findAll() {
		return gedungRepository.findAll();
	}

	public void save(Gedung gedung, String username) {
		User user = userRepository.findOneByUsername(username);
		gedung.setUser(user);
		user.setIdentity(true);
		gedungRepository.save(gedung);
		userRepository.save(user);
	}

	public void delete(Integer id) {
		gedungRepository.delete(id);
	}

	public Gedung findOne(Integer id) {
		return gedungRepository.findOne(id);
	}
}
