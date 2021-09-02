package com.oxygen.OxygenProject.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Review 
{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int reviewid;
	private int orgid;
	private String phno;
	private int remark;
	private String review;
	private String date;
	
	
	//reviewid orgid phno remark review date
	
	public Review(int reviewid, int orgid, String phno, int remark, String review, String date) {
		super();
		this.reviewid = reviewid;
		this.orgid = orgid;
		this.phno = phno;
		this.remark = remark;
		this.review = review;
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "Review [reviewid=" + reviewid + ", orgid=" + orgid + ", phno=" + phno + ", remark=" + remark
				+ ", review=" + review + ", date=" + date + "]";
	}

	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getReviewid() {
		return reviewid;
	}

	public void setReviewid(int reviewid) {
		this.reviewid = reviewid;
	}

	public int getOrgid() {
		return orgid;
	}

	public void setOrgid(int orgid) {
		this.orgid = orgid;
	}

	public String getPhno() {
		return phno;
	}

	public void setPhno(String phno) {
		this.phno = phno;
	}

	public int getRemark() {
		return remark;
	}

	public void setRemark(int remark) {
		this.remark = remark;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
}
