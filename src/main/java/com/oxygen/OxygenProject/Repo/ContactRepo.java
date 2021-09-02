package com.oxygen.OxygenProject.Repo;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;

import com.oxygen.OxygenProject.Entity.Contact;

public interface ContactRepo extends JpaRepository<Contact, Integer> 
{
	
	 @Query("select c from contact c where c.orgid = ?1")
     public List<Contact> findContactByOrgid(int orgid);
	 
	 public List<Contact> findAllByContactIn(List<String> conlist);
	 
	 public List<Contact> findAllByContactidAndOrgid(int contactid,int orgid);
	 
	 public List<Contact> findAllByContactid(int contactid);
	 
	 public List<Contact> findAllByContact(String contact);
	 
	 @Query("delete c from contact c where c.contactid = ?1")
	 public void deleteByContactid(int contactid);
}
