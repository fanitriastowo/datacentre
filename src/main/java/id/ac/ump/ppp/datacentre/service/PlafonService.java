package id.ac.ump.ppp.datacentre.service;

import id.ac.ump.ppp.datacentre.repositories.PlafonRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlafonService {

	@Autowired
	private PlafonRepository plafonRepository;
}
