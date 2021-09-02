package com.oxygen.OxygenProject.Repo;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Modifying;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;

import com.oxygen.OxygenProject.Entity.Org;

public interface OrgRepo extends JpaRepository<Org, Integer> 
{
	
	public List<Org> findAllByCityidAndSubareaidAndOrgname(int cityid,int subareaid,String orgname);

	public List<Org> findAllByOrgid(int orgid);
	
	@Query("select o from org o where o.cityid = ?1 and o.subareaid = ?2")
	public List<Org> getOrgsByCityidAndSubareaid(int cityid,int subareaid);
	
	@Query("select o from org o where o.orgid = ?1")
	public List<Org> getByOrgid(int orgid);
	
	public List<Org> findAllByCityidAndSubareaid(int cityid,int subareaid);
	
	public List<Org> findAllByCityidAndSubareaidOrderByDateDesc(int cityid,int subareaid);
	
	public List<Org> findAllByCityidAndSubareaidOrderByServedcountDesc(int cityid,int subareaid);
	
	public List<Org> findAllByCityidAndSubareaidOrderByHelpfulcountDesc(int cityid,int subareaid);
	
	public List<Org> findAllByCityidAndSubareaidOrderByCostAsc(int cityid,int subareaid);
	
	public List<Org> findAllByCityidAndSubareaidOrderByAvailableDesc(int cityid,int subareaid);
	
}
