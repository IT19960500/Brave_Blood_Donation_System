package com.braveBloodDonation.entities;

public class Event {
	
	private int eventId;
	private String eventAuthorID;
	private String eventHeading;
	private String eventDescription;
	private String eventPhoto;
	private String eventArticle;
	
	
	
	public Event() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Event(int eventId, String eventAuthorID, String eventHeading, String eventDescription, String eventPhoto,
			String eventArticle) {
		super();
		this.eventId = eventId;
		this.eventAuthorID = eventAuthorID;
		this.eventHeading = eventHeading;
		this.eventDescription = eventDescription;
		this.eventPhoto = eventPhoto;
		this.eventArticle = eventArticle;
	}

	public Event(String eventAuthorID, String eventHeading, String eventDescription, String eventPhoto,
			String eventArticle) {
		super();
		this.eventAuthorID = eventAuthorID;
		this.eventHeading = eventHeading;
		this.eventDescription = eventDescription;
		this.eventPhoto = eventPhoto;
		this.eventArticle = eventArticle;
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getEventAuthorID() {
		return eventAuthorID;
	}

	public void setEventAuthorID(String eventAuthorID) {
		this.eventAuthorID = eventAuthorID;
	}

	public String getEventHeading() {
		return eventHeading;
	}

	public void setEventHeading(String eventHeading) {
		this.eventHeading = eventHeading;
	}

	public String getEventDescription() {
		return eventDescription;
	}

	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}

	public String getEventPhoto() {
		return eventPhoto;
	}

	public void setEventPhoto(String eventPhoto) {
		this.eventPhoto = eventPhoto;
	}

	public String getEventArticle() {
		return eventArticle;
	}

	public void setEventArticle(String eventArticle) {
		this.eventArticle = eventArticle;
	}
	
	
	

}
