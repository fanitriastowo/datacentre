package id.ac.ump.ppp.datacentre.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import id.ac.ump.ppp.datacentre.entities.Atap;
import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.Plafon;
import id.ac.ump.ppp.datacentre.entities.Role;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.entities.Gedung.JenisGedung;
import id.ac.ump.ppp.datacentre.entities.kondisi.Kondisi;
import id.ac.ump.ppp.datacentre.repositories.AtapRepository;
import id.ac.ump.ppp.datacentre.repositories.GedungRepository;
import id.ac.ump.ppp.datacentre.repositories.PlafonRepository;
import id.ac.ump.ppp.datacentre.repositories.RoleRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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

	@Autowired
	private AtapRepository atapRepository;

	@Autowired
	private PlafonRepository plafonRepository;

	@PostConstruct
	public void initDb() {
		Role roleAdmin = new Role();
		roleAdmin.setName("ROLE_ADMIN");
		roleRepository.saveAndFlush(roleAdmin);

		List<Role> roles = new ArrayList<>();
		roles.add(roleAdmin);

		User userAdmin = new User();
		userAdmin.setUsername("admin");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		userAdmin.setPassword(encoder.encode("admin"));
		userAdmin.setEmail("fani.triastowo@gmail.com");
		userAdmin.setEnabled(true);
		userAdmin.setRoles(roles);
		userRepository.save(userAdmin);

		// ====================================================================================
		/* ============= ATAP ============ */
		Atap atap1 = new Atap();
		atap1.setUsukPanjang(300.3);
		atap1.setUsukBahan("Baja");
		atap1.setUsukKondisi(Kondisi.BAIK);

		atap1.setGordingPanjang(200.3);
		atap1.setGordingBahan("Kain");
		atap1.setGordingKondisi(Kondisi.RUSAK_RINGAN);

		atap1.setRengPanjang(10.0);
		atap1.setRengBahan("Campuran");
		atap1.setRengKondisi(Kondisi.RUSAK_RINGAN);

		atap1.setKudaKudaPanjang(10.0);
		atap1.setKudaKudaBahan("Campuran");
		atap1.setKudaKudaKondisi(Kondisi.RUSAK_RINGAN);

		atap1.setIkatanAnginPanjang(10.0);
		atap1.setIkatanAnginBahan("Campuran");
		atap1.setIkatanAnginKondisi(Kondisi.RUSAK_RINGAN);

		atap1.setGentengPanjang(10.0);
		atap1.setGentengBahan("Campuran");
		atap1.setGentengKondisi(Kondisi.RUSAK_RINGAN);

		atap1.setBumbunganPanjang(10.0);
		atap1.setBumbunganBahan("Campuran");
		atap1.setBumbunganKondisi(Kondisi.RUSAK_RINGAN);

		atapRepository.save(atap1);
		/* ============= ATAP ============ */

		/* ============= Plafon ============ */
		Plafon plafon1 = new Plafon();
		plafon1.setLisplangPanjang(30.5);
		plafon1.setLisplangBahan("Baja");
		plafon1.setLisplangKondisi(Kondisi.RUSAK_RINGAN);

		plafon1.setRangkaPlafonPanjang(305d);
		plafon1.setRangkaPlafonBahan("Besi");
		plafon1.setRangkaPlafonKondisi(Kondisi.RUSAK_BERAT);

		plafon1.setPlafonPanjang(10.4);
		plafon1.setPlafonBahan("Baja");
		plafon1.setPlafonKondisi(Kondisi.RUSAK_SEDANG);

		plafonRepository.save(plafon1);
		/* ============= Plafon ============ */

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
		gedung.setAtap(atap1);
		gedung.setPlafon(plafon1);
		gedungRepository.save(gedung);
		// ====================================================================================

		// ====================================================================================
		/* ============= ATAP ============ */
		Atap atap2 = new Atap();
		atap2.setUsukPanjang(300.3);
		atap2.setUsukBahan("Baja");
		atap2.setUsukKondisi(Kondisi.BAIK);

		atap2.setGordingPanjang(200.3);
		atap2.setGordingBahan("Kain");
		atap2.setGordingKondisi(Kondisi.RUSAK_RINGAN);

		atap2.setRengPanjang(10.0);
		atap2.setRengBahan("Campuran");
		atap2.setRengKondisi(Kondisi.RUSAK_RINGAN);

		atap2.setKudaKudaPanjang(10.0);
		atap2.setKudaKudaBahan("Campuran");
		atap2.setKudaKudaKondisi(Kondisi.RUSAK_RINGAN);

		atap2.setIkatanAnginPanjang(10.0);
		atap2.setIkatanAnginBahan("Campuran");
		atap2.setIkatanAnginKondisi(Kondisi.RUSAK_RINGAN);

		atap2.setGentengPanjang(10.0);
		atap2.setGentengBahan("Campuran");
		atap2.setGentengKondisi(Kondisi.RUSAK_RINGAN);

		atap2.setBumbunganPanjang(10.0);
		atap2.setBumbunganBahan("Campuran");
		atap2.setBumbunganKondisi(Kondisi.RUSAK_RINGAN);
		atapRepository.save(atap2);

		/* ============= Plafon ============ */
		Plafon plafon2 = new Plafon();
		plafon2.setLisplangPanjang(30.5);
		plafon2.setLisplangBahan("Baja");
		plafon2.setLisplangKondisi(Kondisi.RUSAK_RINGAN);

		plafon2.setRangkaPlafonPanjang(305d);
		plafon2.setRangkaPlafonBahan("Besi");
		plafon2.setRangkaPlafonKondisi(Kondisi.RUSAK_BERAT);

		plafon2.setPlafonPanjang(10.4);
		plafon2.setPlafonBahan("Baja");
		plafon2.setPlafonKondisi(Kondisi.RUSAK_SEDANG);

		plafonRepository.save(plafon2);
		/* ============= Plafon ============ */

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
		gedung2.setAtap(atap2);
		gedung2.setPlafon(plafon2);
		gedungRepository.save(gedung2);
		// ====================================================================================
	}
}
