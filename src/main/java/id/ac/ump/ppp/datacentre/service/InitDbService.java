package id.ac.ump.ppp.datacentre.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import id.ac.ump.ppp.datacentre.entities.Atap;
import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.Role;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.entities.Gedung.JenisGedung;
import id.ac.ump.ppp.datacentre.entities.kondisi.KondisiEnum;
import id.ac.ump.ppp.datacentre.repositories.AtapRepository;
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

	@Autowired
	private AtapRepository atapRepository;

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

		/* ============= ATAP ============ */
		Atap atap1 = new Atap();
		// ============= Usuk ===============
		atap1.setUsukPanjang(300.3);
		atap1.setUsukBahan("Baja");
		atap1.setUsukKondisi(KondisiEnum.BAIK);

		// ============= Gording ===============
		atap1.setGordingPanjang(200.3);
		atap1.setGordingBahan("Kain");
		atap1.setGordingKondisi(KondisiEnum.RUSAK_RINGAN);

		// ============= Reng ===============
		atap1.setRengPanjang(10.0);
		atap1.setRengBahan("Campuran");
		atap1.setRengKondisi(KondisiEnum.RUSAK_RINGAN);

		// ============= Kuda - Kuda ===============
		atap1.setKudaKudaPanjang(10.0);
		atap1.setKudaKudaBahan("Campuran");
		atap1.setKudaKudaKondisi(KondisiEnum.RUSAK_RINGAN);

		// ============= Ikatan Angin ===============
		atap1.setIkatanAnginPanjang(10.0);
		atap1.setIkatanAnginBahan("Campuran");
		atap1.setIkatanAnginKondisi(KondisiEnum.RUSAK_RINGAN);

		// ============= Genteng ===============
		atap1.setGentengPanjang(10.0);
		atap1.setGentengBahan("Campuran");
		atap1.setGentengKondisi(KondisiEnum.RUSAK_RINGAN);

		// ============= Bumbungan ===============
		atap1.setBumbunganPanjang(10.0);
		atap1.setBumbunganBahan("Campuran");
		atap1.setBumbunganKondisi(KondisiEnum.RUSAK_RINGAN);

		atapRepository.save(atap1);

		Calendar tahunBerdiri = Calendar.getInstance();
		tahunBerdiri.set(2014, 0, 1);

		Calendar tahunSurvey = Calendar.getInstance();
		tahunSurvey.set(2014, 0, 1);

		// ===========================================================
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
		gedungRepository.save(gedung);

		/* ============= ATAP ============ */
		Atap atap2 = new Atap();
		// ============= Usuk ===============
		atap2.setUsukPanjang(300.3);
		atap2.setUsukBahan("Baja");
		atap2.setUsukKondisi(KondisiEnum.BAIK);

		// ============= Gording ===============
		atap2.setGordingPanjang(200.3);
		atap2.setGordingBahan("Kain");
		atap2.setGordingKondisi(KondisiEnum.RUSAK_RINGAN);

		// ============= Reng ===============
		atap2.setRengPanjang(10.0);
		atap2.setRengBahan("Campuran");
		atap2.setRengKondisi(KondisiEnum.RUSAK_RINGAN);

		// ============= Kuda - Kuda ===============
		atap2.setKudaKudaPanjang(10.0);
		atap2.setKudaKudaBahan("Campuran");
		atap2.setKudaKudaKondisi(KondisiEnum.RUSAK_RINGAN);

		// ============= Ikatan Angin ===============
		atap2.setIkatanAnginPanjang(10.0);
		atap2.setIkatanAnginBahan("Campuran");
		atap2.setIkatanAnginKondisi(KondisiEnum.RUSAK_RINGAN);

		// ============= Genteng ===============
		atap2.setGentengPanjang(10.0);
		atap2.setGentengBahan("Campuran");
		atap2.setGentengKondisi(KondisiEnum.RUSAK_RINGAN);

		// ============= Bumbungan ===============
		atap2.setBumbunganPanjang(10.0);
		atap2.setBumbunganBahan("Campuran");
		atap2.setBumbunganKondisi(KondisiEnum.RUSAK_RINGAN);
		atapRepository.save(atap2);

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
		gedungRepository.save(gedung2);
	}
}
