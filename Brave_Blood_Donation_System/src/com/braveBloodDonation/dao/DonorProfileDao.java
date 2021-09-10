package com.braveBloodDonation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.braveBloodDonation.entities.Donor;
import com.braveBloodDonation.helper.connectionProvider;

public class DonorProfileDao {
	
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
	
	public static Donor getDonorDetailsById (String username) {
		Donor donor= null;
		try {
		//get our db connecrtion
		Connection con = connectionProvider.getConnection();
		String sql = "SELECT * FROM donor ORDER BY username=?";
		//cerate statment
		PreparedStatement stmt = con.prepareStatement(sql);
		//assign the value
		stmt.setString(1, username);
		//execute the query
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
		donor = new Donor();
		donor.setUsername(rs.getString("username"));;
		donor.setEmail(rs.getString("email"));
		donor.setPhone(rs.getString("phone"));
		donor.setAddress(rs.getString("address"));
		donor.setOccupation(rs.getString("occupation"));
		donor.setWeight(rs.getString("weight"));
		donor.setWeight(rs.getString("height"));

		}
		}catch (Exception e) {
		e.printStackTrace();
		}
		return donor;
		}
	

}
