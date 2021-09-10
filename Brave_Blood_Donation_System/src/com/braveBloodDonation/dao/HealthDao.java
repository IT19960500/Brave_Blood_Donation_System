package com.braveBloodDonation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement; 
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com.braveBloodDonation.entities.Health;
import com.braveBloodDonation.helper.connectionProvider;

public class HealthDao {
	
	//Insert into db
	public static boolean insertHealth (String healthAuthorID,String healthHeading,String healthDescription, String healthPhoto,String healthArticle) {
		
		boolean isSuccess=false;
	
		try {

			//get our dbconnection
			Connection con = connectionProvider.getConnection();
			
			//insert sql query
			String sql = "INSERT INTO health(healthAuthorID,healthHeading,healthDescription,healthPhoto,healthArticle) VALUES(?,?,?,?,?)";
						
			//create statement
			java.sql.PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign the value to the sql query
			stmt.setString(1, healthAuthorID);
			stmt.setString(2, healthHeading);
			stmt.setString(3, healthDescription);
			stmt.setString(4, healthPhoto);
			stmt.setString(5, healthArticle);
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
	public static ArrayList<Health>getAllHealth(){
		
		//create new arry object
		ArrayList<Health> list = new ArrayList<>();
		
		try {
			
			//get our dbconnection
			Connection con = connectionProvider.getConnection();
			
			//insert sql query
			String sql = "SELECT * FROM health ORDER BY healthId DESC";
						
			//create statement
			java.sql.PreparedStatement stmt = con.prepareStatement(sql);
			
			//execute the query
			ResultSet rs = stmt.executeQuery();
			
			//get details from db
			while (rs.next()) {
				
				int healthId = rs.getInt("healthId");
				String healthAuthorID = rs.getString("healthAuthorID");
				String healthHeading=rs.getString("healthHeading");
				String healthDescription=rs.getString("healthDescription");
				String healthPhoto=rs.getString("healthPhoto");
				String healthArticle=rs.getString("healthArticle");
				
				//create an object docCategory class
				Health  health = new Health(healthId,healthAuthorID,healthHeading,healthDescription,healthPhoto,healthArticle);
				//set value into arrayList
				list.add(health);
			}
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}

	//update events
	public static boolean updateHealth(int healthId, String healthAuthorID,String healthHeading,String healthDescription, String healthPhoto,String healthArticle) {
		
		boolean isSuccess = false;
		
		
		try {
			
			//get our db connecrtion
			Connection con = connectionProvider.getConnection();
			
			//create sql query
			String sql = "UPDATE health SET  healthAuthorID=?,healthHeading=?,healthDescription=?,healthPhoto=?,healthArticle=?  WHERE healthId=? ";
					
			//cerate statment
			java.sql.PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign data to sql query
			
			stmt.setString(1, healthAuthorID);
			stmt.setString(2, healthHeading);
			stmt.setString(3, healthDescription);
			stmt.setString(4, healthPhoto);
			stmt.setString(5, healthArticle);
			stmt.setInt(6, healthId);
	
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
	public static boolean deleteHealth(int healthId) {
		
		boolean isSuccess = false;
		
		try {
			
			//get our db connecrtion
			Connection con = connectionProvider.getConnection();
			
			//create sql query
			String sql = "DELETE FROM health WHERE healthId=? ";
			
			//cerate statment
			PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign the value
			stmt.setInt(1, healthId);
			
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
	
	public static Health getHealthDetailsById (int healthId) {
		
		Health health= null;
		
		try {
			
			//get our db connecrtion
			Connection con = connectionProvider.getConnection();
			
			String sql = "SELECT * FROM health ORDER BY healthId=?";
			
			//cerate statment
			PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign the value
			stmt.setInt(1, healthId);
			
			//execute the query
			ResultSet rs = stmt.executeQuery();
			
				while (rs.next()) {
				
				health = new Health();
				health.setHealthId(rs.getInt("healthId"));;
				health.setHealthAuthorID(rs.getString("healthID"));
				health.setHealthHeading(rs.getString("healthHeading"));
				health.setHealthDescription(rs.getString("healthDescription"));
				health.setHealthPhoto(rs.getString("healthPhoto"));
				health.setHealthArticle(rs.getString("healthArticle"));	
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return health;
	}

}
