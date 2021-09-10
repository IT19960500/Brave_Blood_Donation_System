package com.braveBloodDonation.entities;

public class News {

	private int newsId;
	private String newsAuthorID;
	private String newsHeading;
	private String newsDescription;
	private String newsPhoto;
	private String newsArticle;
	
	
	
	public News() {
		super();
	}


	public News(int newsId, String newsAuthorID, String newsHeading, String newsDescription, String newsPhoto,
			String newsArticle) {
		super();
		this.newsId = newsId;
		this.newsAuthorID = newsAuthorID;
		this.newsHeading = newsHeading;
		this.newsDescription = newsDescription;
		this.newsPhoto = newsPhoto;
		this.newsArticle = newsArticle;
	}


	public News(String newsAuthorID, String newsHeading, String newsDescription, String newsPhoto, String newsArticle) {
		super();
		this.newsAuthorID = newsAuthorID;
		this.newsHeading = newsHeading;
		this.newsDescription = newsDescription;
		this.newsPhoto = newsPhoto;
		this.newsArticle = newsArticle;
	}




	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public String getNewsAuthorID() {
		return newsAuthorID;
	}
	public void setNewsAuthorID(String newsAuthorID) {
		this.newsAuthorID = newsAuthorID;
	}
	public String getNewsHeading() {
		return newsHeading;
	}
	public void setNewsHeading(String newsHeading) {
		this.newsHeading = newsHeading;
	}
	public String getNewsDescription() {
		return newsDescription;
	}
	public void setNewsDescription(String newsDescription) {
		this.newsDescription = newsDescription;
	}
	public String getNewsPhoto() {
		return newsPhoto;
	}
	public void setNewsPhoto(String newsPhoto) {
		this.newsPhoto = newsPhoto;
	}
	public String getNewsArticle() {
		return newsArticle;
	}
	public void setNewsArticle(String newsArticle) {
		this.newsArticle = newsArticle;
	}
	
	
	
}
