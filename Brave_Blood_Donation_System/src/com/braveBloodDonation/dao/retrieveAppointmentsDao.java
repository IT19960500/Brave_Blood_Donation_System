package com.braveBloodDonation.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.braveBloodDonation.entities.Appointment;
import com.braveBloodDonation.helper.connectionProvider;

public class retrieveAppointmentsDao {
	
	//retrieve from db
		public static ArrayList<Appointment>getAllAppointments(){
			
			//create new arry object
			ArrayList<Appointment> list = new ArrayList<>();
			
			try {
				
				//get our dbconnection
				Connection con = connectionProvider.getConnection();
				
				//insert sql query
				String sql = "SELECT * FROM appointments ORDER BY nic ASC";
							
				//create statement
				java.sql.PreparedStatement stmt = con.prepareStatement(sql);
				
				//execute the query
				ResultSet rs = stmt.executeQuery();
				
				//get details from db
				while (rs.next()) {
					
					int appointmentId = (rs.getInt("appointmentId"));
					String nic = rs.getString("nic");
					String name = rs.getString("name");
					String bloodgrp=rs.getString("bloodgrp");
					String date=rs.getString("date");
					String status = rs.getString("status");
					
					//create an object docCategory class
					Appointment  appointment = new Appointment(appointmentId, nic, name, bloodgrp, date, status);
					//set value into arrayList
					list.add(appointment);
				}
				
				
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;

}
}
