package id.ac.ump.ppp.datacentre.service;

import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.Plafon;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.repositories.GedungRepository;
import id.ac.ump.ppp.datacentre.repositories.PlafonRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PlafonService {
	
	private final String CACHEGEDUNGLIST = "gedungList";
	private final String USERLISTBYROLEGEDUNG = "userListByRoleGedung";

	@Autowired
	private PlafonRepository plafonRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private GedungRepository gedungRepository;

	@Transactional
	@CacheEvict(value = { CACHEGEDUNGLIST, USERLISTBYROLEGEDUNG }, allEntries = true)
	public void save(Plafon plafon, String username) {
		User user = userRepository.findOneByUsername(username);
		Gedung gedung = gedungRepository.findOneByUser(user);
		plafonRepository.save(plafon);
		gedung.setPlafon(plafon);
		gedungRepository.save(gedung);
		user.setPlafon(true);
		userRepository.save(user);
	}
}
