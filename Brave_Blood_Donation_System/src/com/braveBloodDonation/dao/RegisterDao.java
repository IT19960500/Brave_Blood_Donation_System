package com.braveBloodDonation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.braveBloodDonation.entities.Donor;

public class RegisterDao {
	
	private String dbUrl = "jdbc:mysql://localhost:3306/brave_blood_donation_db?autoReconnect=true&useSSL=false";
	private String dbUname = "root";
	private String dbPassword = "so1487906*";
	private String dbDriver = "com.mysql.jdbc.Driver";
	
	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
			
	
	public String insert(Donor donor) {
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Data entered successfully";
		String sql = "insert into donor values(?,?,?,?,?,?,?)";
		
		PreparedStatement ps;
		try {
	    ps = con.prepareStatement(sql);
	    ps.setString(1, donor.getUsername());
		ps.setString(2, donor.getEmail());
		ps.setString(3, donor.getPhone());
		ps.setString(4, donor.getAddress());
		ps.setString(5, donor.getOccupation());
		ps.setString(6, donor.getWeight());
		ps.setString(7, donor.getHeight());
		ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
		}
		return result;	
	}	

}
