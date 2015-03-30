package id.ac.ump.ppp.datacentre.repositories;

import id.ac.ump.ppp.datacentre.entities.Air;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AirRepository extends JpaRepository<Air, Integer> {

}
