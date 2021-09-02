package com.oxygen.OxygenProject.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Contact 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int contactid;
	
	private String contact;
	private int orgid;
	
	@Override
	public String toString() {
		return "Contact [contactid=" + contactid + ", orgid=" + orgid + ", contact=" + contact + "]";
	}

	public Contact(int contactid, int orgid, String contact) {
		super();
		this.contactid = contactid;
		this.orgid = orgid;
		this.contact = contact;
	}

	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getContactid() {
		return contactid;
	}

	public void setContactid(int contactid) {
		this.contactid = contactid;
	}

	public int getOrgid() {
		return orgid;
	}

	public void setOrgid(int orgid) {
		this.orgid = orgid;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}
	
	
	
}
