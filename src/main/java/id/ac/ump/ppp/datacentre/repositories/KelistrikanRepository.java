package id.ac.ump.ppp.datacentre.repositories;

import id.ac.ump.ppp.datacentre.entities.Kelistrikan;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KelistrikanRepository extends JpaRepository<Kelistrikan, Integer> {

}
