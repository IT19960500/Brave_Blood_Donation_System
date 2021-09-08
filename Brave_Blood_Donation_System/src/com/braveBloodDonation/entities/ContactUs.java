package com.braveBloodDonation.entities;

public class ContactUs {
	
	private int contactUsId;
	private String contactUsQusType;
	private String contactUsQus;
	private String contactUsName;
	private String contactUsEmail;
	private String contactUsPhone;
	private String contactusStatus;
	
	public ContactUs(int contactUsId, String contactUsQusType, String contactUsQus, String contactUsName,
			String contactUsEmail, String contactUsPhone, String contactusStatus) {
		super();
		this.contactUsId = contactUsId;
		this.contactUsQusType = contactUsQusType;
		this.contactUsQus = contactUsQus;
		this.contactUsName = contactUsName;
		this.contactUsEmail = contactUsEmail;
		this.contactUsPhone = contactUsPhone;
		this.contactusStatus = contactusStatus;
	}

	public ContactUs(String contactUsQusType, String contactUsQus, String contactUsName, String contactUsEmail,
			String contactUsPhone, String contactusStatus) {
		super();
		this.contactUsQusType = contactUsQusType;
		this.contactUsQus = contactUsQus;
		this.contactUsName = contactUsName;
		this.contactUsEmail = contactUsEmail;
		this.contactUsPhone = contactUsPhone;
		this.contactusStatus = contactusStatus;
	}

	public int getContactUsId() {
		return contactUsId;
	}

	public void setContactUsId(int contactUsId) {
		this.contactUsId = contactUsId;
	}

	public String getContactUsQusType() {
		return contactUsQusType;
	}

	public void setContactUsQusType(String contactUsQusType) {
		this.contactUsQusType = contactUsQusType;
	}

	public String getContactUsQus() {
		return contactUsQus;
	}

	public void setContactUsQus(String contactUsQus) {
		this.contactUsQus = contactUsQus;
	}

	public String getContactUsName() {
		return contactUsName;
	}

	public void setContactUsName(String contactUsName) {
		this.contactUsName = contactUsName;
	}

	public String getContactUsEmail() {
		return contactUsEmail;
	}

	public void setContactUsEmail(String contactUsEmail) {
		this.contactUsEmail = contactUsEmail;
	}

	public String getContactUsPhone() {
		return contactUsPhone;
	}

	public void setContactUsPhone(String contactUsPhone) {
		this.contactUsPhone = contactUsPhone;
	}

	public String getContactusStatus() {
		return contactusStatus;
	}

	public void setContactusStatus(String contactusStatus) {
		this.contactusStatus = contactusStatus;
	}
	
	
}
