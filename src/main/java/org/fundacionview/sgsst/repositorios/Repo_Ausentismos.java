package org.fundacionview.sgsst.repositorios;

import java.util.ArrayList;

import org.fundacionview.sgsst.modelos.Ausentismo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Repo_Ausentismos extends JpaRepository<Ausentismo, Integer> {

	public ArrayList<Ausentismo> findByAreaTrabajo(String areaTrabajo);

}
