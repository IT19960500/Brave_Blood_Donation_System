package com.braveBloodDonation.entities;

public class Health {


	private int healthId;
	private String healthAuthorID;
	private String healthHeading;
	private String healthDescription;
	private String healthPhoto;
	private String healthArticle;

	
	public Health() {
		super();
	}

	public Health(int healthId, String healthAuthorID, String healthHeading, String healthDescription,
			String healthPhoto, String healthArticle) {
		super();
		this.healthId = healthId;
		this.healthAuthorID = healthAuthorID;
		this.healthHeading = healthHeading;
		this.healthDescription = healthDescription;
		this.healthPhoto = healthPhoto;
		this.healthArticle = healthArticle;
	}
	
	public Health(String healthAuthorID, String healthHeading, String healthDescription, String healthPhoto,
			String healthArticle) {
		super();
		this.healthAuthorID = healthAuthorID;
		this.healthHeading = healthHeading;
		this.healthDescription = healthDescription;
		this.healthPhoto = healthPhoto;
		this.healthArticle = healthArticle;
	}

	public int getHealthId() {
		return healthId;
	}
	public void setHealthId(int healthId) {
		this.healthId = healthId;
	}
	public String getHealthAuthorID() {
		return healthAuthorID;
	}
	public void setHealthAuthorID(String healthAuthorID) {
		this.healthAuthorID = healthAuthorID;
	}
	public String getHealthHeading() {
		return healthHeading;
	}
	public void setHealthHeading(String healthHeading) {
		this.healthHeading = healthHeading;
	}
	public String getHealthDescription() {
		return healthDescription;
	}
	public void setHealthDescription(String healthDescription) {
		this.healthDescription = healthDescription;
	}
	public String getHealthPhoto() {
		return healthPhoto;
	}
	public void setHealthPhoto(String healthPhoto) {
		this.healthPhoto = healthPhoto;
	}

	public String getHealthArticle() {
		return healthArticle;
	}

	public void setHealthArticle(String healthArticle) {
		this.healthArticle = healthArticle;
	} 
	
	
}
