package com.braveBloodDonation.entities;

public class User {

//declare variable
	
	private String id;
	private String fName;
	private String lName;
	private String email;
	private String nic;
	private String dob;	
	private String gender;
	private String weight;
	private String height;
	private String username;
	private String password;
	private String Image;

//constructor
	

//default constructor	
	public User() {
		
	}
	
	public User(String id, String fName, String lName, String email, String nic, String dob, String gender, String weight,
		String height, String username, String password, String image) {
	super();
	this.id = id;
	this.fName = fName;
	this.lName = lName;
	this.email = email;
	this.nic = nic;
	this.dob = dob;
	this.gender = gender;
	this.weight = weight;
	this.height = height;
	this.username = username;
	this.password = password;
	Image = image;
}

	public User(String fName, String lName, String email, String dob, String gender, String weight, String height,
			String username, String password, String image) {
		
		this.fName = fName;
		this.lName = lName;
		this.email = email;
		this.dob = dob;
		this.nic = nic;
		this.gender = gender;
		this.weight = weight;
		this.height = height;
		this.username = username;
		this.password = password;
		Image = image;
	}

// getters and setters
	
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getfName() {
		return fName;
	}


	public void setfName(String fName) {
		this.fName = fName;
	}


	public String getlName() {
		return lName;
	}


	public void setlName(String lName) {
		this.lName = lName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getNic() {
		return nic;
	}


	public void setNic(String nic) {
		this.nic = nic;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
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


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getImage() {
		return Image;
	}


	public void setImage(String image) {
		Image = image;
	}


	
	
	
	
	
	

}
