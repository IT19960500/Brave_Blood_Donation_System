package com.braveBloodDonation.entities;

public class campCategory {
	
	//declare variable
	private int cid;
	private String campName;
	
	
	//default constructor
	public campCategory() {
		
	}

	//constructor
	public campCategory(int cid, String campName) {
		this.cid = cid;
		this.campName = campName;
	}

	
	public campCategory(String campName) {
		
		this.campName = campName;
	}

	
	//generate getters and setters
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCampName() {
		return campName;
	}

	public void setCampName(String campName) {
		this.campName = campName;
	}
	
	
	
	
}
