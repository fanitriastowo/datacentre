package id.ac.ump.ppp.datacentre.repositories;

import java.util.List;

import id.ac.ump.ppp.datacentre.entities.Role;
import id.ac.ump.ppp.datacentre.entities.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {

	User findOneByUsername(String username);

	List<User> findAllByRoles(Role role);

}
