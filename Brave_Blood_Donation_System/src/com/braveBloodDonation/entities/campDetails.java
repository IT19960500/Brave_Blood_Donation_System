package com.braveBloodDonation.entities;

public class campDetails {
	
	//declare variable
	private int campId;
	private String poster;
	private int campCat; 
	private String organizationName; 
	private String campDate;
	private String  campTime; 
	private String address; 
	private String location; 
	private int exceptDonors; 
	private String arrangement; 
	private String organizerName; 
	private String organizerEmail;
	
	
	//constructor
	public campDetails(String poster, int campCat, String organizationName, String campDate, String campTime,
			String address, String location, int exceptDonors, String arrangement, String organizerName,
			String organizerEmail) {
		
		this.poster = poster;
		this.campCat = campCat;
		this.organizationName = organizationName;
		this.campDate = campDate;
		this.campTime = campTime;
		this.address = address;
		this.location = location;
		this.exceptDonors = exceptDonors;
		this.arrangement = arrangement;
		this.organizerName = organizerName;
		this.organizerEmail = organizerEmail;
	}

	//constructor with campId
	public campDetails(int campId, String poster, int campCat, String organizationName, String campDate,
			String campTime, String address, String location, int exceptDonors, String arrangement,
			String organizerName, String organizerEmail) {
		
		this.campId = campId;
		this.poster = poster;
		this.campCat = campCat;
		this.organizationName = organizationName;
		this.campDate = campDate;
		this.campTime = campTime;
		this.address = address;
		this.location = location;
		this.exceptDonors = exceptDonors;
		this.arrangement = arrangement;
		this.organizerName = organizerName;
		this.organizerEmail = organizerEmail;
	}

	public campDetails() {
		// TODO Auto-generated constructor stub
	}

	//generate getters and setters
	public int getCampId() {
		return campId;
	}

	public void setCampId(int campId) {
		this.campId = campId;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
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

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
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
