package id.ac.ump.ppp.datacentre.service;

import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.Lantai;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.repositories.GedungRepository;
import id.ac.ump.ppp.datacentre.repositories.LantaiRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class LantaiService {
	private final String CACHEGEDUNGLIST = "gedungList";
	private final String USERLISTBYROLEGEDUNG = "userListByRoleGedung";

	@Autowired
	private LantaiRepository lantaiRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private GedungRepository gedungRepository;

	@Transactional
	@CacheEvict(value = { CACHEGEDUNGLIST, USERLISTBYROLEGEDUNG }, allEntries = true)
	public void save(Lantai lantai, String username) {
		User user = userRepository.findOneByUsername(username);
		Gedung gedung = gedungRepository.findOneByUser(user);
		lantaiRepository.save(lantai);
		gedung.setLantai(lantai);
		gedungRepository.save(gedung);
		user.setLantai(true);
		userRepository.save(user);
	}
}
