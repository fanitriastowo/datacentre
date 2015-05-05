package id.ac.ump.ppp.datacentre.service;

import id.ac.ump.ppp.datacentre.entities.Kelistrikan;
import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.repositories.KelistrikanRepository;
import id.ac.ump.ppp.datacentre.repositories.GedungRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class KelistrikanService {

	@Autowired
	private GedungRepository gedungRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private KelistrikanRepository kelistrikanRepository;

	public void save(Kelistrikan kelistrikan, String username) {
		User user = userRepository.findOneByUsername(username);
		Gedung gedung = gedungRepository.findOneByUser(user);
		kelistrikanRepository.save(kelistrikan);
		gedung.setKelistrikan(kelistrikan);
		gedungRepository.save(gedung);
		user.setKelistrikan(true);
		userRepository.save(user);
	}
}