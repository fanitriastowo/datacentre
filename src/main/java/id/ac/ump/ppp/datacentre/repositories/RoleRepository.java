package id.ac.ump.ppp.datacentre.repositories;

import id.ac.ump.ppp.datacentre.entities.Role;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {

	Role findOneByName(String name);

}
