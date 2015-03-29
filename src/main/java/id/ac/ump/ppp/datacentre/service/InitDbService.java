package id.ac.ump.ppp.datacentre.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import id.ac.ump.ppp.datacentre.entities.Atap;
import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.entities.Plafon;
import id.ac.ump.ppp.datacentre.entities.Role;
import id.ac.ump.ppp.datacentre.entities.Ruangan;
import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.entities.Struktur;
import id.ac.ump.ppp.datacentre.entities.Pondasi;
import id.ac.ump.ppp.datacentre.entities.Gedung.JenisGedung;
import id.ac.ump.ppp.datacentre.entities.kondisi.Kondisi;
import id.ac.ump.ppp.datacentre.repositories.AtapRepository;
import id.ac.ump.ppp.datacentre.repositories.GedungRepository;
import id.ac.ump.ppp.datacentre.repositories.PlafonRepository;
import id.ac.ump.ppp.datacentre.repositories.RoleRepository;
import id.ac.ump.ppp.datacentre.repositories.RuanganRepository;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;
import id.ac.ump.ppp.datacentre.repositories.StrukturRepository;
import id.ac.ump.ppp.datacentre.repositories.PondasiRepository;

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

	@Autowired
	private StrukturRepository strukturRepository;

	@Autowired
	private PondasiRepository pondasiRepository;

	@Autowired
	private RuanganRepository ruanganRepository;

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

		/* ============= Struktur ============ */
		Struktur struktur1 = new Struktur();
		struktur1.setKolomJumlah(30);
		struktur1.setKolomBahan("Baja");
		struktur1.setKolomKondisi(Kondisi.RUSAK_RINGAN);

		struktur1.setRingBalokJumlah(30);
		struktur1.setRingBalokBahan("Baja");
		struktur1.setRingBalokKondisi(Kondisi.RUSAK_RINGAN);

		struktur1.setBalokJumlah(30);
		struktur1.setBalokBahan("Baja");
		struktur1.setBalokKondisi(Kondisi.RUSAK_BERAT);

		struktur1.setPelatLantaiPanjang(30.5);
		struktur1.setPelatLantaiBahan("Besi");
		struktur1.setPelatLantaiKondisi(Kondisi.BAIK);

		strukturRepository.save(struktur1);
		/* ============= Struktur ============ */

		/* ============= Pondasi ============ */
		Pondasi pondasi1 = new Pondasi();
		pondasi1.setSloofPanjang(30.2);
		pondasi1.setSloofBahan("Baja");
		pondasi1.setSloofKondisi(Kondisi.BAIK);
		pondasiRepository.save(pondasi1);
		/* ============= Pondasi ============ */

		/* ============= Ruangan ============ */
		Ruangan ruangan1 = new Ruangan();
		ruangan1.setDindingRuangPanjang(30d);
		ruangan1.setDindingRuangBahan("Triplex");
		ruangan1.setDindingRuangKondisi(Kondisi.BAIK);
		ruangan1.setCatDindingPanjang(20d);
		ruangan1.setCatDindingJenis("Cat Tembok");
		ruangan1.setCatDindingKondisi(Kondisi.BAIK);
		ruangan1.setKusenPintuJumlah(30);
		ruangan1.setKusenPintuBahan("Jati");
		ruangan1.setKusenPintuKondisi(Kondisi.RUSAK_RINGAN);
		ruangan1.setDaunPintuJumlah(90);
		ruangan1.setDaunPintuBahan("Stainless Steel");
		ruangan1.setDaunPintuKondisi(Kondisi.BAIK);
		ruangan1.setKunciHendelJumlah(20);
		ruangan1.setKunciHendelBahan("Stainless Stell");
		ruangan1.setKunciHendelKondisi(Kondisi.BAIK);
		ruangan1.setCatPintuPanjang(20d);
		ruangan1.setCatPintuJenis("Plistur");
		ruangan1.setCatPintuKondisi(Kondisi.BAIK);
		ruangan1.setKusenJendelaJumlah(20);
		ruangan1.setKusenJendelaBahan("Jati");
		ruangan1.setKusenJendelaKondisi(Kondisi.BAIK);
		ruangan1.setDaunJendelaJumlah(20);
		ruangan1.setDaunJendelaBahan("Jati");
		ruangan1.setDaunJendelaKondisi(Kondisi.BAIK);
		ruangan1.setKacaPanjang(30d);
		ruangan1.setKacaKondisi(Kondisi.BAIK);
		ruangan1.setSlotJumlah(30);
		ruangan1.setSlotMerek("Ferarri");
		ruangan1.setSlotKondisi(Kondisi.BAIK);
		ruangan1.setCatJendelaPanjang(30d);
		ruangan1.setCatJendelaJenis("Minyak");
		ruangan1.setCatJendelaKondisi(Kondisi.BAIK);
		ruanganRepository.save(ruangan1);
		/* ============= Ruangan ============ */

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
		gedung.setStruktur(struktur1);
		gedung.setPondasi(pondasi1);
		gedung.setRuangan(ruangan1);
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

		/* ============= Struktur ============ */
		Struktur struktur2 = new Struktur();
		struktur2.setKolomJumlah(30);
		struktur2.setKolomBahan("Baja");
		struktur2.setKolomKondisi(Kondisi.RUSAK_RINGAN);

		struktur2.setRingBalokJumlah(30);
		struktur2.setRingBalokBahan("Baja");
		struktur2.setRingBalokKondisi(Kondisi.RUSAK_RINGAN);

		struktur2.setBalokJumlah(30);
		struktur2.setBalokBahan("Baja");
		struktur2.setBalokKondisi(Kondisi.RUSAK_BERAT);

		struktur2.setPelatLantaiPanjang(30.5);
		struktur2.setPelatLantaiBahan("Besi");
		struktur2.setPelatLantaiKondisi(Kondisi.BAIK);

		strukturRepository.save(struktur2);
		/* ============= Struktur ============ */

		/* ============= Pondasi ============ */
		Pondasi pondasi2 = new Pondasi();
		pondasi2.setSloofPanjang(30.2);
		pondasi2.setSloofBahan("Baja");
		pondasi2.setSloofKondisi(Kondisi.BAIK);
		pondasiRepository.save(pondasi2);
		/* ============= Pondasi ============ */

		/* ============= Ruangan ============ */
		Ruangan ruangan2 = new Ruangan();
		ruangan2.setDindingRuangPanjang(30d);
		ruangan2.setDindingRuangBahan("Triplex");
		ruangan2.setDindingRuangKondisi(Kondisi.BAIK);
		ruangan2.setCatDindingPanjang(20d);
		ruangan2.setCatDindingJenis("Cat Tembok");
		ruangan2.setCatDindingKondisi(Kondisi.BAIK);
		ruangan2.setKusenPintuJumlah(30);
		ruangan2.setKusenPintuBahan("Jati");
		ruangan2.setKusenPintuKondisi(Kondisi.RUSAK_RINGAN);
		ruangan2.setDaunPintuJumlah(90);
		ruangan2.setDaunPintuBahan("Stainless Steel");
		ruangan2.setDaunPintuKondisi(Kondisi.BAIK);
		ruangan2.setKunciHendelJumlah(20);
		ruangan2.setKunciHendelBahan("Stainless Stell");
		ruangan2.setKunciHendelKondisi(Kondisi.BAIK);
		ruangan2.setCatPintuPanjang(20d);
		ruangan2.setCatPintuJenis("Plistur");
		ruangan2.setCatPintuKondisi(Kondisi.BAIK);
		ruangan2.setKusenJendelaJumlah(20);
		ruangan2.setKusenJendelaBahan("Jati");
		ruangan2.setKusenJendelaKondisi(Kondisi.BAIK);
		ruangan2.setDaunJendelaJumlah(20);
		ruangan2.setDaunJendelaBahan("Jati");
		ruangan2.setDaunJendelaKondisi(Kondisi.BAIK);
		ruangan2.setKacaPanjang(30d);
		ruangan2.setKacaKondisi(Kondisi.BAIK);
		ruangan2.setSlotJumlah(30);
		ruangan2.setSlotMerek("Ferarri");
		ruangan2.setSlotKondisi(Kondisi.BAIK);
		ruangan2.setCatJendelaPanjang(30d);
		ruangan2.setCatJendelaJenis("Minyak");
		ruangan2.setCatJendelaKondisi(Kondisi.BAIK);
		ruanganRepository.save(ruangan2);
		/* ============= Ruangan ============ */

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
		gedung2.setStruktur(struktur2);
		gedung2.setPondasi(pondasi2);
		gedung2.setRuangan(ruangan2);
		gedungRepository.save(gedung2);
		// ====================================================================================
	}
}
