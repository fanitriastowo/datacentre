package id.ac.ump.ppp.datacentre.service;

import java.util.List;

import id.ac.ump.ppp.datacentre.entities.Gedung;
import id.ac.ump.ppp.datacentre.repositories.GedungRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GedungService {

	@Autowired
	private GedungRepository gedungRepository;

	public List<Gedung> findAll() {
		return gedungRepository.findAll();
	}

	public void save(Gedung gedung) {
		gedungRepository.save(gedung);
	}

	public void delete(Integer id) {
		gedungRepository.delete(id);
	}

	public Gedung findOne(Integer id) {
		return gedungRepository.findOne(id);
	}
}
