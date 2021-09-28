package com.braveBloodDonation.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.braveBloodDonation.entities.User;
import com.braveBloodDonation.helper.connectionProvider;
import com.mysql.jdbc.PreparedStatement;


public class UserDao {


	
// method to insert user to database:
	
	public static boolean   saveUser(String fName, String lName, String email,String nic,String dob,String gender,String weight,String height,String uname,String password,String image){
		boolean isSuccess=false;
		
		try
		{
			// User --> database
			
			//get our dbconnection
			Connection con = connectionProvider.getConnection();
			
			//insert sql query
			String sql = "INSERT INTO user_table(fName,lName,email,NIC,DOB,gender,weight,height,userName,password,image) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
						
			//create statement
			java.sql.PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign the value to the sql query
			
			stmt.setString(1, fName);
			stmt.setString(2, lName);
			stmt.setString(3, email);
			stmt.setString(4, nic);
			stmt.setString(5, dob);
			stmt.setString(6, gender);
			stmt.setString(7, weight);
			stmt.setString(8, height);
			stmt.setString(9, uname);
			stmt.setString(10, password);
			stmt.setString(11, image);
			
			
			
			//execute query
			int rs = stmt.executeUpdate();
			
			//check insert success or not
			if(rs>0) {
				
				isSuccess=true;
				
			}else {
				isSuccess=false;
			}			
			
		}catch(Exception e)
		{
			e.printStackTrace();
			
		}
		return isSuccess;
		
	}

	public static User getUserDetailsByEmailaAndPassword(String username, String password) {
		//define object type variable for return purpose
				//it is inistionly null
				User u = null;
				
				try {
					
					//get our db connecrtion
					Connection con = connectionProvider.getConnection();
					
					//create sql query
					String sql = "SELECT * FROM user_table WHERE userName=? and password=?";
						
					//create statement
					PreparedStatement stmt = (PreparedStatement) con.prepareStatement(sql);
					
					//assign value 
					stmt.setNString(1, username);
					stmt.setNString(2, password);
					
					//execute sql query
					ResultSet rs = stmt.executeQuery();
					
					//if the un and email are available in to the database, assign data 
					if(rs.next()) {
						
						//create a new object from patient class
						u = new User();
						
						
						//get the data from database and assign that data to the user class variables
						u.setId(rs.getString("userId"));
						u.setfName(rs.getString("fName"));
						u.setlName(rs.getString("lName"));
						u.setEmail(rs.getString("email"));
						u.setNic(rs.getString("NIC"));
						u.setDob(rs.getString("DOB"));
						u.setGender(rs.getString("gender"));
						u.setWeight(rs.getString("weight"));
						u.setHeight(rs.getString("height"));
						u.setUsername(rs.getString("userName"));
						u.setPassword(rs.getString("password"));
						u.setImage(rs.getString("image"));
						
						
					}
					
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				return u;
	}
	
	
	//get all user details for display
	
			public static ArrayList<User>getAlluserDetails(){
				
				//create new arry object
				ArrayList<User> list = new ArrayList<>();
				
				try {
					
					//get our dbconnection
					Connection con = connectionProvider.getConnection();
					
					//insert sql query
					String sql = "select * from brave_blood_donation_db.user_table ORDER BY userId";
								
					//create statement
					java.sql.PreparedStatement stmt = con.prepareStatement(sql);
					
					//execute the query
					ResultSet rs = stmt.executeQuery();
					
					//get details from db
					while (rs.next()) {
						
						
						String userId= rs.getString("userId");
						String fName= rs.getString("fName");
						String lName= rs.getString("lName");
						String email= rs.getString("email");
						String nic= rs.getString("NIC");
						String dob= rs.getString("DOB");
						String gender= rs.getString("gender");
						String weight= rs.getString("weight");
						String height= rs.getString("height");
						String username= rs.getString("userName");
						String password= rs.getString("password");
						String image= rs.getString("image");
			
						
						//create an object docCategory class
						User user = new User(userId, fName, lName, email, nic, dob, gender, weight, height, username, password, image);
						//set value into arrayList
						list.add(user);
					}
					
					
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				
				
				return list;
				
			}
			
			//update user details
			
			public static boolean updateUserDetails(String fName, String lName, String email, String nic, String dob,
					String gender, String weight, String height, String uname, String password,
					String image) {
				
				boolean isSuccess = false;
				
				
				try {
					
					//get our db connecrtion
					Connection con = connectionProvider.getConnection();
					
					//create sql query
					String sql = "UPDATE camp_details_table SET fName=?, lName=?, email=?, nic=?, dob=?, "
							+ "gender=?, weight=?, height=?, uname=?, password=?, image=? WHERE uname=? ";
							
					//cerate statment
					java.sql.PreparedStatement stmt = con.prepareStatement(sql);
					
					//assign data to sql query
					stmt.setString(1, fName);
					stmt.setString(2, lName);
					stmt.setString(3, email);
					stmt.setString(4, nic);
					stmt.setString(5, dob);
					stmt.setString(6, gender);
					stmt.setString(7, weight);
					stmt.setString(8, height);
					stmt.setString(9, uname);
					stmt.setString(10, password);
					stmt.setString(11, image);
					
			
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
			
			
			
			
			
			
			//get user details for search
			
					public static List<User>getUserBySearch(String serachData){
						
						//create new arry object
						List<User> list = new ArrayList<User>();
						
						try {
							
							//get our dbconnection
							Connection con = connectionProvider.getConnection();
							
							//insert sql query
							
							String sql = "SELECT * FROM user_table WHERE userName=? ";
							
							
										
							//create statement
							java.sql.PreparedStatement stmt = con.prepareStatement(sql);
							
							stmt.setString(1, serachData);
							
							//execute the query
							ResultSet rs = stmt.executeQuery();
							
							//get details from db
							while (rs.next()) {
								
								String userId= rs.getString("userId");
								String fName= rs.getString("fName");
								String lName= rs.getString("lName");
								String email= rs.getString("email");
								String nic= rs.getString("NIC");
								String dob= rs.getString("DOB");
								String gender= rs.getString("gender");
								String weight= rs.getString("weight");
								String height= rs.getString("height");
								String username= rs.getString("userName");								
								String image= rs.getString("image");
								
								//create an object 
								User user = new User(userId,fName,lName,email,nic,dob,gender,weight,height,image);
								//set value into arrayList
								list.add(user);
							}
							
							
							
						}catch (Exception e) {
							e.printStackTrace();
						}
						
						
						
						return list;
						
}
					
					
					//User details delete 
					
					public static boolean userdetailsDelete(String uname) {
						
						boolean isSuccess = false;
						
						try {
							
							//get our db connecrtion
							Connection con = connectionProvider.getConnection();
							
							//create sql query
							String sql = "DELETE FROM user_table WHERE userName=? ";
							
							//cerate statment
							java.sql.PreparedStatement stmt = con.prepareStatement(sql);
							
							//assign the value
							stmt.setString(1, uname);
							
							
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
					
					
					
					//User details delete - Admin
					
					
					public static boolean userDetailsDeleteAdmin(int uname) {
						
						boolean isSuccess = false;
						
						try {
							
							//get our db connecrtion
							Connection con = connectionProvider.getConnection();
							
							//create sql query
							String sql = "DELETE FROM user_table WHERE userId=? ";
							
							//cerate statment
							java.sql.PreparedStatement stmt = con.prepareStatement(sql);
							
							//assign the value
							stmt.setInt(1, uname);
							
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
