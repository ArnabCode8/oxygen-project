package com.oxygen.OxygenProject.Repo;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;

import com.oxygen.OxygenProject.Entity.Review;

public interface ReviewRepo extends JpaRepository<Review, Integer> 
{
	//reviewid orgid phno remark review date
	
	@Query("select r from review r where r.orgid = ?1")
	public List<Review> getReviewsByOrgid(int orgid);
	
	@Query("select r from review r where r.orgid = ?1 and r.phno = ?2")
	public List<Review> getReviewsByOrgidAndPhno(int orgid, String phno);
	
	public List<Review> findAllByOrgidAndPhno(int orgid,String phno);
}
