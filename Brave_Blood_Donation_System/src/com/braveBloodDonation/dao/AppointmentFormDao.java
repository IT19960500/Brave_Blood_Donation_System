package com.braveBloodDonation.dao;
import java.sql.Connection;
import java.sql.SQLException;

import com.braveBloodDonation.helper.connectionProvider;

public class AppointmentFormDao {
	
public static boolean insertAppointment (String nic,String name,String bloodgrp, String date,String status) {
		
		boolean isSuccess=false;
	
		try {

			//get our dbconnection
			Connection con = connectionProvider.getConnection();
			
			//insert sql query
			String sql = "INSERT INTO appointments(nic,name,bloodgrp,date,status) VALUES(?,?,?,?,?)";
						
			//create statement
			java.sql.PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign the value to the sql query
			stmt.setString(1, nic);
			stmt.setString(2, name);
			stmt.setString(3, bloodgrp);
			stmt.setString(4, date);
			stmt.setString(5, status);
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
}
