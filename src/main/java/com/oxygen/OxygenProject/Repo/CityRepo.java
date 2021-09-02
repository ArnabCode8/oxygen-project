package com.oxygen.OxygenProject.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.oxygen.OxygenProject.Entity.City;

public interface CityRepo extends JpaRepository<City, Integer> 
{

}
