package com.oxygen.OxygenProject.Repo;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;

import com.oxygen.OxygenProject.Entity.Subarea;

public interface SubareaRepo extends JpaRepository<Subarea, Integer> 
{

	@Query("select s from subarea s where s.cityid=?1")
	public List<Subarea> findByCityid(int cityid);
	
}
