package com.braveBloodDonation.dao;

import java.sql.Connection;

import com.braveBloodDonation.helper.connectionProvider;

public class updateAppointmentDao {

public static boolean updateAppointment(Integer appointmentId, String nic, String name, String bloodgrp, String date, String status) {
		
		boolean isSuccess = false;
		
		
		try {
			
			//get our db connecrtion
			Connection con = connectionProvider.getConnection();
			
			//create sql query
			String sql = "UPDATE appointments SET  appointmentId=?,nic=?,name=?,bloodgrp=?,date=?,status=?  WHERE nic=? ";
					
			//cerate statment
			java.sql.PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign data to sql query
			
			stmt.setInt(1, appointmentId);
			stmt.setString(2, nic);
			stmt.setString(3, name);
			stmt.setString(4, bloodgrp);
			stmt.setString(5, date);
			stmt.setString(6, status);
			stmt.setString(7, nic);
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
