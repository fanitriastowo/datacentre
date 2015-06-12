package id.ac.ump.ppp.datacentre.service;

import javax.transaction.Transactional;

import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.Struktur;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.repositories.StrukturRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;
import id.ac.ump.ppp.datacentre.repositories.GedungRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;

@Service
public class StrukturService {
	
	private final String CACHEGEDUNGLIST = "gedungList";
	private final String USERLISTBYROLEGEDUNG = "userListByRoleGedung";

	@Autowired
	private GedungRepository gedungRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private StrukturRepository strukturRepository;

	@Transactional
	@CacheEvict(value = { CACHEGEDUNGLIST, USERLISTBYROLEGEDUNG }, allEntries = true)
	public void save(Struktur struktur, String username) {
		User user = userRepository.findOneByUsername(username);
		Gedung gedung = gedungRepository.findOneByUser(user);
		strukturRepository.save(struktur);
		gedung.setStruktur(struktur);
		gedungRepository.save(gedung);
		user.setStruktur(true);
		userRepository.save(user);
	}

}
