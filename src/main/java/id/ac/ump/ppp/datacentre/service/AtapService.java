package id.ac.ump.ppp.datacentre.service;

import id.ac.ump.ppp.datacentre.entities.Atap;
import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.repositories.AtapRepository;
import id.ac.ump.ppp.datacentre.repositories.GedungRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AtapService {
	
	private final String CACHEGEDUNGLIST = "gedungList";
	private final String USERLISTBYROLEGEDUNG = "userListByRoleGedung";

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private GedungRepository gedungRepository;

	@Autowired
	private AtapRepository atapRepository;

	@Transactional
	@CacheEvict(value = { CACHEGEDUNGLIST, USERLISTBYROLEGEDUNG }, allEntries = true)
	public void save(Atap atap, String username) {
		User user = userRepository.findOneByUsername(username);
		Gedung gedung = gedungRepository.findOneByUser(user);
		atapRepository.save(atap);
		gedung.setAtap(atap);
		gedungRepository.save(gedung);
		user.setAtap(true);
		userRepository.save(user);
	}
}
