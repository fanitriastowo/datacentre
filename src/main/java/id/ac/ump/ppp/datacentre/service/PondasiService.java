package id.ac.ump.ppp.datacentre.service;

import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.Pondasi;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.repositories.GedungRepository;
import id.ac.ump.ppp.datacentre.repositories.PondasiRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PondasiService {
	
	private final String CACHEGEDUNGLIST = "gedungList";
	private final String USERLISTBYROLEGEDUNG = "userListByRoleGedung";

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private GedungRepository gedungRepository;

	@Autowired
	private PondasiRepository pondasiRepository;

	@Transactional
	@CacheEvict(value = { CACHEGEDUNGLIST, USERLISTBYROLEGEDUNG }, allEntries = true)
	public void save(Pondasi pondasi, String username) {
		User user = userRepository.findOneByUsername(username);
		Gedung gedung = gedungRepository.findOneByUser(user);
		pondasiRepository.save(pondasi);
		gedung.setPondasi(pondasi);
		gedungRepository.save(gedung);
		user.setPondasi(true);
		userRepository.save(user);
	}
}
