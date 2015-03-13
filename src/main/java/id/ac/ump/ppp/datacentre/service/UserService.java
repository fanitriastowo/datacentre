package id.ac.ump.ppp.datacentre.service;

import java.util.List;

import id.ac.ump.ppp.datacentre.entities.User;
import id.ac.ump.ppp.datacentre.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public List<User> findAll() {
		return userRepository.findAll();
	}

}
