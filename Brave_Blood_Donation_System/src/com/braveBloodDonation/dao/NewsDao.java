package com.braveBloodDonation.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;


import com.braveBloodDonation.entities.News;
import com.braveBloodDonation.helper.connectionProvider;


public class NewsDao {
  
	//Insert into db
	public static boolean insertNews (String newsAuthorID,String newsHeading,String newsDescription, String newsPhoto,String newsArticle) {
		
		boolean isSuccess=false;
	
		try {

			//get our dbconnection
			Connection con = connectionProvider.getConnection();
			
			//insert sql query
			String sql = "INSERT INTO news(newsAuthorID,newsHeading,newsDescription,newsPhoto,newsArticle) VALUES(?,?,?,?,?)";
						
			//create statement
			java.sql.PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign the value to the sql query
			stmt.setString(1, newsAuthorID);
			stmt.setString(2, newsHeading);
			stmt.setString(3, newsDescription);
			stmt.setString(4, newsPhoto);
			stmt.setString(5, newsArticle);
			//execute query
			int rs = stmt.executeUpdate();
			
			//check insert success or not
			if(rs>0) {
				
				isSuccess=true;
				
			}else {
				isSuccess=false;
			}	
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return isSuccess;
	}
	
	
	//retrieve from db
	public static ArrayList<News>getAllNews(){
		
		//create new arry object
		ArrayList<News> list = new ArrayList<>();
		
		try {
			
			//get our dbconnection
			Connection con = connectionProvider.getConnection();
			
			//insert sql query
			String sql = "SELECT * FROM news ORDER BY newsId DESC";
						
			//create statement
			java.sql.PreparedStatement stmt = con.prepareStatement(sql);
			
			//execute the query
			ResultSet rs = stmt.executeQuery();
			
			//get details from db
			while (rs.next()) {
				
				int newsId = rs.getInt("newsId");
				String newsAuthorID = rs.getString("newsAuthorID");
				String newsHeading=rs.getString("newsHeading");
				String newsDescription=rs.getString("newsDescription");
				String newsPhoto=rs.getString("newsPhoto");
				String newsArticle=rs.getString("newsArticle");
				
				//create an object docCategory class
				News  news = new News(newsId,newsAuthorID,newsHeading,newsDescription,newsPhoto,newsArticle);
				//set value into arrayList
				list.add(news);
			}
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	//update news
	public static boolean updateNews(int newsId, String newsAuthorID,String newsHeading,String newsDescription, String newsPhoto,String newsArticle) {
		
		boolean isSuccess = false;
		
		
		try {
			
			//get our db connecrtion
			Connection con = connectionProvider.getConnection();
			
			//create sql query
			String sql = "UPDATE news SET  newsAuthorID=?,newsHeading=?,newsDescription=?,newsPhoto=?,newsArticle=?  WHERE newsId=? ";
					
			//cerate statment
			java.sql.PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign data to sql query
			
			stmt.setString(1, newsAuthorID);
			stmt.setString(2, newsHeading);
			stmt.setString(3, newsDescription);
			stmt.setString(4, newsPhoto);
			stmt.setString(5, newsArticle);
			stmt.setInt(6, newsId);
	
			//execute query
			int rs = stmt.executeUpdate();
			
			//if update is success return value
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
		
	}
	
	//delete news
	public static boolean deleteNews(int newsId) {
		
		boolean isSuccess = false;
		
		try {
			
			//get our db connecrtion
			Connection con = connectionProvider.getConnection();
			
			//create sql query
			String sql = "DELETE FROM news WHERE newsId=? ";
			
			//cerate statment
			PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign the value
			stmt.setInt(1, newsId);
			
			//execute query
			int rs = stmt.executeUpdate();
			
			//if update is success return value
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		
		return isSuccess;
		
	}
	
	public static News getNewsDetailsById (int newsId) {
		
		News news= null;
		
		try {
			
			//get our db connecrtion
			Connection con = connectionProvider.getConnection();
			
			String sql = "SELECT * FROM news ORDER BY newsId=?";
			
			//cerate statment
			PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign the value
			stmt.setInt(1, newsId);
			
			//execute the query
			ResultSet rs = stmt.executeQuery();
			
				while (rs.next()) {
				
				news = new News();
				news.setNewsId(rs.getInt("newsId"));;
				news.setNewsAuthorID(rs.getString("newsAuthorID"));
				news.setNewsHeading(rs.getString("newsHeading"));
				news.setNewsDescription(rs.getString("newsDescription"));
				news.setNewsPhoto(rs.getString("newsPhoto"));

				news.setNewsArticle(rs.getString("newsArticle"));
				
				
				

				news.setNewsArticle(rs.getString("newsArticle"));	

			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return news;
	}
	

	public static List<News>getSearchNews(String newsAuthorID){
		List<News> list = new ArrayList<>();
		try {
		
			//get our dbconnection
			Connection con = connectionProvider.getConnection();
			
			//create sql query
			String sql = "SELECT * FROM news WHERE newsAuthorID LIKE '%"+newsAuthorID+"%'";    
					
			//cerate statment
			java.sql.PreparedStatement stmt = con.prepareStatement(sql);

			
			//execute the query
			ResultSet rs = stmt.executeQuery();
			
			//get details from db
			while (rs.next()) {
				
				int newsId = rs.getInt("newsId");
				String newsAuthorID2 = rs.getString("newsAuthorID");
				String newsHeading=rs.getString("newsHeading");
				String newsDescription=rs.getString("newsDescription");
				String newsPhoto=rs.getString("newsPhoto");
				String newsArticle=rs.getString("newsArticle");
				
				//create an object docCategory class
				News  news = new News(newsId,newsAuthorID2,newsHeading,newsDescription,newsPhoto,newsArticle);
				//set value into arrayList
				list.add(news);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}

	
}
