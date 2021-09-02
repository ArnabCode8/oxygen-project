package com.oxygen.OxygenProject.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Subarea 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int subareaid;
	
	private int cityid;
	private String subreaname;
	
	@Override
	public String toString() {
		return "Subarea [subareaid=" + subareaid + ", cityid=" + cityid + ", subreaname=" + subreaname + "]";
	}

	public int getSubareaid() {
		return subareaid;
	}

	public void setSubareaid(int subareaid) {
		this.subareaid = subareaid;
	}

	public int getCityid() {
		return cityid;
	}

	public void setCityid(int cityid) {
		this.cityid = cityid;
	}

	public String getSubreaname() {
		return subreaname;
	}

	public void setSubreaname(String subreaname) {
		this.subreaname = subreaname;
	}

	public Subarea() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Subarea(int subareaid, int cityid, String subreaname) {
		super();
		this.subareaid = subareaid;
		this.cityid = cityid;
		this.subreaname = subreaname;
	}
	
	

}
