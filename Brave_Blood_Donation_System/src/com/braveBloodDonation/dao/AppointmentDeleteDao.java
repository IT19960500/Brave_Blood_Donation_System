package com.braveBloodDonation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.braveBloodDonation.helper.connectionProvider;

public class AppointmentDeleteDao {
	
public static boolean deleteAppointment(String nic) {
		
		boolean isSuccess = false;
		
		try {
			
			//get our db connecrtion
			Connection con = connectionProvider.getConnection();
			
			//create sql query
			String sql = "DELETE FROM appointments WHERE nic=? ";
			
			//cerate statment
			PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign the value
			stmt.setString(1, nic);
			
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
}
