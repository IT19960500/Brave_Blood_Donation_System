package com.braveBloodDonation.dao;

import java.sql.Connection;
import java.sql.SQLException;


import com.braveBloodDonation.helper.connectionProvider;

public class RegisterDao {
	
public static boolean insert(String username,String email,String phone, String address,String occupation, String weight, String height) {
		
		boolean isTrue=false;
	
		try {

			//get our dbconnection
			Connection con = connectionProvider.getConnection();
			
			//insert sql query
			String sql = "INSERT INTO donor(username, email, phone, address, occupation, weight, height) VALUES(?,?,?,?,?,?,?)";
						
			//create statement
			java.sql.PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign the value to the sql query
			stmt.setString(1, username);
			stmt.setString(2, email);
			stmt.setString(3, phone);
			stmt.setString(4, address);
			stmt.setString(5, occupation);
			stmt.setString(6, weight);
			stmt.setString(7, height);
			//execute query
			int rs = stmt.executeUpdate();
			
			//check insert success or not
			if(rs>0) {
				
				isTrue=true;
				
			}else {
				isTrue=false;
			}	
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return isTrue;
	}
}
