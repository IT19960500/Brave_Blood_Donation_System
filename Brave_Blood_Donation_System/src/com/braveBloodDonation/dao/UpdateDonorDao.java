package com.braveBloodDonation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.braveBloodDonation.entities.Donor;
import com.braveBloodDonation.helper.connectionProvider;

public class UpdateDonorDao {
	public static ArrayList<Donor>getUser() {
		ArrayList<Donor> list=new ArrayList<>();
	try{
		//get our dbconnection
		Connection con = connectionProvider.getConnection();

		//insert sql query
		String sql = "SELECT * FROM donor";

		//create statement
		java.sql.PreparedStatement stmt = con.prepareStatement(sql);

		//execute the query
		ResultSet rs = stmt.executeQuery();

		//get details from db
		while (rs.next()) {

		String ex1 = rs.getString("username");
		String ex2 = rs.getString("email");
		String ex3 = rs.getString("phone");
		String ex4 = rs.getString("address");
		String ex5 = rs.getString("occupation");
		String ex6 = rs.getString("weight");
		String ex7 = rs.getString("height");
		
		//create an object docCategory class
		Donor donor = new Donor(ex1,ex2,ex3,ex4,ex5,ex6,ex7);
		//set value into arrayList
		list.add(donor);
		}
		
		}catch(SQLException e){
			e.printStackTrace();
		}
	return list;
	}
	
	public static boolean update(String username, String email, String phone, String address, String occupation, String weight, String height) {
		
		boolean isSuccess = false;


		try {

		//get our db connecrtion
		Connection con = connectionProvider.getConnection();

		//create sql query
		String sql = "UPDATE donor SET username=?,email=?,phone=?,address=?,occupation=?,weight=?,height=? WHERE username=? ";

		//cerate statment
		java.sql.PreparedStatement stmt = con.prepareStatement(sql);

		//assign data to sql query
		stmt.setString(1, email);
		stmt.setString(2, phone);
		stmt.setString(3, address);
		stmt.setString(4, occupation);
		stmt.setString(5, weight);
		stmt.setString(6, height);
		stmt.setString(7,username);
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
