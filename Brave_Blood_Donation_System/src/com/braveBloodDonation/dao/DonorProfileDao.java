package com.braveBloodDonation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.braveBloodDonation.entities.Donor;
import com.braveBloodDonation.helper.connectionProvider;

public class DonorProfileDao {

	public static Donor getDonorDetailsById(String username) {
		Donor donor = null;
		try {
			// get our db connecrtion
			Connection con = connectionProvider.getConnection();

			String sql = "SELECT * FROM donor ORDER BY username=?";
			// cerate statment
			PreparedStatement stmt = con.prepareStatement(sql);
			// assign the value
			stmt.setString(1, username);
			// execute the query
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				donor = new Donor();
				donor.setUsername(rs.getString("username"));
				donor.setEmail(rs.getString("email"));
				donor.setPhone(rs.getString("phone"));
				donor.setAddress(rs.getString("address"));
				donor.setOccupation(rs.getString("occupation"));
				donor.setWeight(rs.getString("weight"));
				donor.setWeight(rs.getString("height"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return donor;
	}

	public static boolean update(String username, String email, String phone, String address, String occupation, String weight, String height) {
			

		boolean isSuccess = false;

		try {

			// get our db connecrtion
			Connection con = connectionProvider.getConnection();

			// create sql query
			String sql = "UPDATE donor SET email=?,phone=?,address=?,occupation=?,weight=?,height=? WHERE username=? ";

			// cerate statment
			java.sql.PreparedStatement stmt = con.prepareStatement(sql);

			// assign data to sql query
			stmt.setString(1, email);
			stmt.setString(2, phone);
			stmt.setString(3, address);
			stmt.setString(4, occupation);
			stmt.setString(5, weight);
			stmt.setString(6, height);
			stmt.setString(7, username);
			
			// execute query
			int rs = stmt.executeUpdate();

			// if update is success return value
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

}
