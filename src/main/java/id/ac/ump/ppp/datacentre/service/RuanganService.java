package id.ac.ump.ppp.datacentre.service;

import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.Ruangan;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.repositories.GedungRepository;
import id.ac.ump.ppp.datacentre.repositories.RuanganRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RuanganService {
	
	private final String CACHEGEDUNGLIST = "gedungList";
	private final String USERLISTBYROLEGEDUNG = "userListByRoleGedung";

	@Autowired
	private RuanganRepository ruanganRepository;

	@Autowired
	private GedungRepository gedungRepository;

	@Autowired
	private UserRepository userRepository;

	@Transactional
	@CacheEvict(value = { CACHEGEDUNGLIST, USERLISTBYROLEGEDUNG }, allEntries = true)
	public void save(Ruangan ruangan, String username) {
		User user = userRepository.findOneByUsername(username);
		Gedung gedung = gedungRepository.findOneByUser(user);
		ruanganRepository.save(ruangan);
		gedung.setRuangan(ruangan);
		gedungRepository.save(gedung);
		user.setRuangan(true);
		userRepository.save(user);
	}

}
