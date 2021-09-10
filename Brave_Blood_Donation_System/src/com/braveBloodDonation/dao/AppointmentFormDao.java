package com.braveBloodDonation.dao;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.braveBloodDonation.entities.Appointment;

public class AppointmentFormDao {
	
	private String dbUrl = "jdbc:mysql://localhost:3306/brave_blood_donation_db?autoReconnect=true&useSSL=false";
	private String dbUname = "root";
	private String dbPassword = "so1487906*";
	private String dbDriver = "com.mysql.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	
	public String insert(Appointment appointment)
	{
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Data entered successfully";
		String sql = "insert into appointments values(?,?,?,?)";
		
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, appointment.getNIC());
		ps.setString(2, appointment.getName());
		ps.setString(3, appointment.getBloodgrp());
		ps.setString(4, appointment.getDate());
		ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
		}
		return result;
	}
}
