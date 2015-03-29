package id.ac.ump.ppp.datacentre.repositories;

import id.ac.ump.ppp.datacentre.entities.Lantai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LantaiRepository extends JpaRepository<Lantai, Integer> {

}
