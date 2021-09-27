package com.braveBloodDonation.entities;

public class organizeDonationCamp {
	
	//declare variable
	private int orgId;
	private int campCat; 
	private String organizationName; 
	private String campDate;
	private String  campTime; 
	private String address; 
	private int exceptDonors; 
	private String arrangement; 
	private String organizerName; 
	private String organizerEmail;
	
	
	//default constructor	
	public organizeDonationCamp() {
		super();
	}


	//constructor with orgId
	public organizeDonationCamp(int orgId, int campCat, String organizationName, String campDate, String campTime,
			String address, int exceptDonors, String arrangement, String organizerName, String organizerEmail) {
	
		this.orgId = orgId;
		this.campCat = campCat;
		this.organizationName = organizationName;
		this.campDate = campDate;
		this.campTime = campTime;
		this.address = address;
		this.exceptDonors = exceptDonors;
		this.arrangement = arrangement;
		this.organizerName = organizerName;
		this.organizerEmail = organizerEmail;
	}


	//constructor without orgId
	public organizeDonationCamp(int campCat, String organizationName, String campDate, String campTime, String address,
			int exceptDonors, String arrangement, String organizerName, String organizerEmail) {
		
		this.campCat = campCat;
		this.organizationName = organizationName;
		this.campDate = campDate;
		this.campTime = campTime;
		this.address = address;
		this.exceptDonors = exceptDonors;
		this.arrangement = arrangement;
		this.organizerName = organizerName;
		this.organizerEmail = organizerEmail;
	}


	//getters and setters
	public int getOrgId() {
		return orgId;
	}


	public void setOrgId(int orgId) {
		this.orgId = orgId;
	}


	public int getCampCat() {
		return campCat;
	}


	public void setCampCat(int campCat) {
		this.campCat = campCat;
	}


	public String getOrganizationName() {
		return organizationName;
	}


	public void setOrganizationName(String organizationName) {
		this.organizationName = organizationName;
	}


	public String getCampDate() {
		return campDate;
	}


	public void setCampDate(String campDate) {
		this.campDate = campDate;
	}


	public String getCampTime() {
		return campTime;
	}


	public void setCampTime(String campTime) {
		this.campTime = campTime;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public int getExceptDonors() {
		return exceptDonors;
	}


	public void setExceptDonors(int exceptDonors) {
		this.exceptDonors = exceptDonors;
	}


	public String getArrangement() {
		return arrangement;
	}


	public void setArrangement(String arrangement) {
		this.arrangement = arrangement;
	}


	public String getOrganizerName() {
		return organizerName;
	}


	public void setOrganizerName(String organizerName) {
		this.organizerName = organizerName;
	}


	public String getOrganizerEmail() {
		return organizerEmail;
	}


	public void setOrganizerEmail(String organizerEmail) {
		this.organizerEmail = organizerEmail;
	}
	
	

}
