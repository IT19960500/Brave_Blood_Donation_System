package com.braveBloodDonation.entities;

public class Donor {

	private String username,email, phone, address, occupation, weight, height;

	public Donor() {
		super();
	}

	public Donor(String username, String email, String phone, String address, String occupation, String weight, String height) {
		super();
		this.username = username;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.occupation = occupation;
		this.weight = weight;
		this.height = height;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

}
