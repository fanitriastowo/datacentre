package id.ac.ump.ppp.datacentre.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.Role;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.entities.Gedung.JenisGedung;
import id.ac.ump.ppp.datacentre.repositories.GedungRepository;
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

	@Autowired
	private GedungRepository gedungRepository;

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

		Calendar tahunBerdiri = Calendar.getInstance();
		tahunBerdiri.set(2014, 0, 1);

		Calendar tahunSurvey = Calendar.getInstance();
		tahunSurvey.set(2014, 0, 1);

		Gedung gedung = new Gedung();
		gedung.setKodeGedung("K1001");
		gedung.setNamaGedung("R");
		gedung.setNamaLain("Gedung Teknik");
		gedung.setKegunaan("Perkuliahan");
		gedung.setTahunBerdiri(tahunBerdiri.getTime());
		gedung.setTahunSurvey(tahunSurvey.getTime());
		gedung.setLuasGedung(350.0);
		gedung.setJenisGedung(JenisGedung.BERTINGKAT);
		gedung.setLokasiGedung("Kampus 1 UMP Dukuhwaluh Purwokerto");
		gedungRepository.save(gedung);

		tahunBerdiri.set(2004, 0, 1);
		tahunSurvey.set(2004, 0, 1);

		Gedung gedung2 = new Gedung();
		gedung2.setKodeGedung("K1003");
		gedung2.setNamaGedung("J");
		gedung2.setNamaLain("Gedung Ekonomi");
		gedung2.setKegunaan("Perkuliahan");
		gedung2.setTahunBerdiri(tahunBerdiri.getTime());
		gedung2.setTahunSurvey(tahunSurvey.getTime());
		gedung2.setLuasGedung(600.0);
		gedung2.setJenisGedung(JenisGedung.BERTINGKAT);
		gedung2.setLokasiGedung("Kampus 1 UMP Dukuhwaluh Purwokerto");
		gedungRepository.save(gedung2);
	}
}
