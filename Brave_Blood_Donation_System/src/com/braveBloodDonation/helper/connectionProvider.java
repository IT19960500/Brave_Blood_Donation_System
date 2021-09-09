package com.braveBloodDonation.helper;

import java.sql.*;


public class connectionProvider {
	
	
	private static String url = "jdbc:mysql://localhost:3306/brave_blood_donation_db?autoReconnect=true&useSSL=false";
	private static String userName = "root";
	private static String password = "Malki#22";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			if(con == null) {
				
				//database eka hadann ganna driver eka
				Class.forName("com.mysql.jdbc.Driver");
				
				//connection eka hadagannawa
				con = DriverManager.getConnection(url, userName, password);
				
			}
			
			
		}catch(Exception e) {
			System.out.println("database connection si not successful");
		}
		
		return con;
	}
	

}
