package com.braveBloodDonation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.braveBloodDonation.entities.ContactUs;
import com.braveBloodDonation.helper.connectionProvider;

public class ContactUsDao {

	//Insert into db
		public static boolean insertContactUs (String contactUsQusType,String contactUsQus, String contactUsName,String contactUsEmail, String contactUsPhone) {
			
			boolean isSuccess=false;
		
			try {

				//get our dbconnection
				Connection con = connectionProvider.getConnection();
				
				//insert sql query
				String sql = "INSERT INTO contactus(contactUsQusType,contactUsQus,contactUsName,contactUsEmail,contactUsPhone) VALUES(?,?,?,?,?)";
							
				//create statement
				java.sql.PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign the value to the sql query
				stmt.setString(1, contactUsQusType);
				stmt.setString(2, contactUsQus);
				stmt.setString(3, contactUsName);
				stmt.setString(4, contactUsEmail);
				stmt.setString(5, contactUsPhone);
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
		public static ArrayList<ContactUs>getAllContactUs(){
			
			//create new arry object
			ArrayList<ContactUs> list = new ArrayList<>();
			
			try {
				
				//get our dbconnection
				Connection con = connectionProvider.getConnection();
				
				//insert sql query
				String sql = "SELECT * FROM contactus ORDER BY contactUsId DESC";
							
				//create statement
				java.sql.PreparedStatement stmt = con.prepareStatement(sql);
				
				//execute the query
				ResultSet rs = stmt.executeQuery();
				
				//get details from db
				while (rs.next()) {
					
					int contactUsId = rs.getInt("contactUsId");
					String contactUsQusType = rs.getString("contactUsQusType");
					String contactUsQus=rs.getString("contactUsQus");
					String contactUsName=rs.getString("contactUsName");
					String contactUsEmail=rs.getString("contactUsEmail");
					String contactUsPhone=rs.getString("contactUsPhone");
					String contactusStatus=rs.getString("contactusStatus");
					
					//create an object docCategory class
					ContactUs  contactUs = new ContactUs(contactUsId,contactUsQusType,contactUsQus,contactUsName,contactUsEmail,contactUsPhone,contactusStatus);
					//set value into arrayList
					list.add(contactUs);
				}
				
				
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;
			
		}
		
		//update news
		public static boolean updateContactUs(int contactUsId, String contactUsQusType,String contactUsQus, String contactUsName,String contactUsEmail, String contactUsPhone,String contactusStatus) {
			
			boolean isSuccess = false;
			
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "UPDATE contactus SET  contactUsQusType=?,contactUsQus=?,contactUsName=?,contactUsEmail=?,contactUsPhone=?,contactusStatus=?  WHERE contactUsId=? ";
						
				//cerate statment
				java.sql.PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign data to sql query
				
				stmt.setString(1, contactUsQusType);
				stmt.setString(2, contactUsQus);
				stmt.setString(3, contactUsName);
				stmt.setString(4, contactUsEmail);
				stmt.setString(5, contactUsPhone);
				stmt.setString(6, contactusStatus);
				stmt.setInt(7, contactUsId);
		
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
		public static boolean deleteContactUs(int contactUsId) {
			
			boolean isSuccess = false;
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "DELETE FROM contactus  WHERE contactUsId=? ";
				
				//cerate statment
				PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign the value
				stmt.setInt(1, contactUsId);
				
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
		
		public static List<ContactUs>getSearchNews(int contactUsId){
			List<ContactUs> list = new ArrayList<>();
			try {
			
				//get our dbconnection
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "SELECT * FROM contactus WHERE contactUsId LIKE '%"+contactUsId+"%'";    
						
				//cerate statment
				java.sql.PreparedStatement stmt = con.prepareStatement(sql);

				
				//execute the query
				ResultSet rs = stmt.executeQuery();
				
				//get details from db
				while (rs.next()) {
					

					int contactUsId1 = rs.getInt("contactUsId");
					String contactUsQusType = rs.getString("contactUsQusType");
					String contactUsQus=rs.getString("contactUsQus");
					String contactUsName=rs.getString("contactUsName");
					String contactUsEmail=rs.getString("contactUsEmail");
					String contactUsPhone=rs.getString("contactUsPhone");
					String contactusStatus=rs.getString("contactusStatus");
					
					//create an object docCategory class
					ContactUs  contactUs = new ContactUs(contactUsId1,contactUsQusType,contactUsQus,contactUsName,contactUsEmail,contactUsPhone,contactusStatus);
					//set value into arrayList
					list.add(contactUs);
					
				}
				
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return list;
		}
		
}
