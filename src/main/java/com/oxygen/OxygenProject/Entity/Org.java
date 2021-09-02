package com.oxygen.OxygenProject.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Org 
{
	@Override
	public String toString() {
		return "Org [orgid=" + orgid + ", orgname=" + orgname + ", address=" + address + ", available=" + available
				+ ", servedcount=" + servedcount + ", helpfulcount=" + helpfulcount + ", nousecount=" + nousecount
				+ ", cost=" + cost + "]";
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orgid;
	
	private String orgname;
	private int cityid;
	private int subareaid;
	private String address;
	private int available;
	private int servedcount;
	private int helpfulcount;
	private int nousecount;
	private int cost;
	private String date;
	
	
	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public Org(int orgid, String orgname, String address, int available, int servedcount, int helpfulcount,
			int nousecount, int cost) {
		super();
		this.orgid = orgid;
		this.orgname = orgname;
		this.address = address;
		this.available = available;
		this.servedcount = servedcount;
		this.helpfulcount = helpfulcount;
		this.nousecount = nousecount;
		this.cost = cost;
	}


	public int getCityid() {
		return cityid;
	}


	public void setCityid(int cityid) {
		this.cityid = cityid;
	}


	public int getSubareaid() {
		return subareaid;
	}


	public void setSubareaid(int subareaid) {
		this.subareaid = subareaid;
	}


	public Org() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getOrgid() {
		return orgid;
	}


	public void setOrgid(int orgid) {
		this.orgid = orgid;
	}


	public String getOrgname() {
		return orgname;
	}


	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public int getAvailable() {
		return available;
	}


	public void setAvailable(int available) {
		this.available = available;
	}


	public int getServedcount() {
		return servedcount;
	}


	public void setServedcount(int servedcount) {
		this.servedcount = servedcount;
	}


	public int getHelpfulcount() {
		return helpfulcount;
	}


	public void setHelpfulcount(int helpfulcount) {
		this.helpfulcount = helpfulcount;
	}


	public int getNousecount() {
		return nousecount;
	}


	public void setNousecount(int nousecount) {
		this.nousecount = nousecount;
	}


	public int getCost() {
		return cost;
	}


	public void setCost(int cost) {
		this.cost = cost;
	}
	

}
