package id.ac.ump.ppp.datacentre.repositories;

import id.ac.ump.ppp.datacentre.entities.Ruangan;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RuanganRepository extends JpaRepository<Ruangan, Integer> {

}
