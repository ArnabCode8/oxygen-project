package com.oxygen.OxygenProject.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class City 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cityid;
	
	private String cityname;

	@Override
	public String toString() {
		return "City [cityid=" + cityid + ", cityname=" + cityname + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

	public int getCityid() {
		return cityid;
	}

	public void setCityid(int cityid) {
		this.cityid = cityid;
	}

	public String getCityname() {
		return cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}

	public City() {
		super();
		// TODO Auto-generated constructor stub
	}

	public City(int cityid, String cityname) {
		super();
		this.cityid = cityid;
		this.cityname = cityname;
	}
	

}
