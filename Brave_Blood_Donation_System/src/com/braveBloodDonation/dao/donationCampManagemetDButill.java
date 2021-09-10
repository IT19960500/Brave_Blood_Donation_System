package com.braveBloodDonation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.braveBloodDonation.entities.campCategory;
import com.braveBloodDonation.entities.campDetails;
import com.braveBloodDonation.entities.organizeDonationCamp;
import com.braveBloodDonation.helper.connectionProvider;

import sun.security.action.GetIntegerAction;





public class donationCampManagemetDButill {

	//check the category already exists or not
	public static boolean categoryAlreadyExists(String catName) {
		
		boolean isSuccess = false;
		
		try {
			
			//get our dbconnection
			Connection con = connectionProvider.getConnection();
			
			//insert sql query
			String sql = "SELECT * FROM camp_category_table WHERE campName=?";
			
			//create statement
			PreparedStatement stmt = con.prepareStatement(sql);
			
			//assign to value in sql query
			stmt.setString(1, catName);
			
			//execute the query
			ResultSet rs = stmt.executeQuery();
			
			//check the successfully add or not
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	} 

	
	
	//add camp category category 
		public static boolean addcampCategory(String campCat) {
			
			boolean isSuccess = false;
			
				try {
					
					
					//get our dbconnection
					Connection con = connectionProvider.getConnection();
					
					//insert sql query
					String sql = "INSERT INTO camp_category_table(campName) VALUES(?)";
								
					//create statement
					PreparedStatement stmt = con.prepareStatement(sql);
					
					//assign the value to the sql query
					stmt.setString(1, campCat);
					
					//execute query
					int rs = stmt.executeUpdate();
					
					//check insert success or not
					if(rs>0) {
						
						isSuccess=true;
						
					}else {
						isSuccess=false;
					}			
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			
			
			return isSuccess;
			
		}
		
		
		
		//get the camp category details from database
		//create arrayList and pass the object our constructor/class
		public static ArrayList<campCategory>getAllCampCategory(){
			
			//create new arry object
			ArrayList<campCategory> list = new ArrayList<>();
			
			try {
				
				//get our dbconnection
				Connection con = connectionProvider.getConnection();
				
				//insert sql query
				String sql = "SELECT * FROM camp_category_table ORDER BY cId DESC";
							
				//create statement
				PreparedStatement stmt = con.prepareStatement(sql);
				
				//execute the query
				ResultSet rs = stmt.executeQuery();
				
				//get details from db
				while (rs.next()) {
					
					int cid = rs.getInt("cId");
					String name = rs.getNString("campName");
					
					//create an object docCategory class
					campCategory cat = new campCategory(cid,name);
					//set value into arrayList
					list.add(cat);
				}
				
				
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			
			
			return list;
			
		}
		
		
		
		
		//update category details 
		
		public static boolean updateCampCatgegoryDetails(int cid, String catName ) {
			
			boolean isSuccess = false;
			
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "UPDATE camp_category_table SET  campName=?  WHERE cId=? ";
						
				//cerate statment
				PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign data to sql query
				stmt.setString(1, catName);
				stmt.setInt(2, cid);
		
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
		
		
		//camp category delete
		
		public static boolean campCategoryDelete(int cid) {
			
			boolean isSuccess = false;
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "DELETE FROM camp_category_table WHERE cId=? ";
				
				//cerate statment
				PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign the value
				stmt.setInt(1, cid);
				
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
		
		
		
		//add camp details 
		public static boolean addcampDetails( int campCat, String organizationName, String campDate, String campTime,
				String address, String location, int exceptDonors, String arrangement, String organizerName,
				String organizerEmail) {
			
			boolean isSuccess = false;
			
				try {
					
					
					//get our dbconnection
					Connection con = connectionProvider.getConnection();
					
					//insert sql query
					String sql = "INSERT INTO camp_details_table(poster,campCat,organizationName,"
							+ "campDate,campTime,address,location,expectedDonors,arrangement,organizerName,organizerEmail) "
							+ "VALUES(?,?,?,?,?,?,?,?,?,?,?)";
								
					//create statement
					PreparedStatement stmt = con.prepareStatement(sql);
					
					//assign the value to the sql query
					String poster = "poster.jpg";
					stmt.setString(1, poster);
					stmt.setInt(2, campCat);
					stmt.setString(3, organizationName);
					stmt.setString(4, campDate);
					stmt.setString(5, campTime);
					stmt.setString(6, address);
					stmt.setString(7, location);
					stmt.setInt(8, exceptDonors);
					stmt.setString(9, arrangement);
					stmt.setString(10, organizerName);
					stmt.setString(11, organizerEmail);
					
					//execute query
					int rs = stmt.executeUpdate();
					
					//check insert success or not
					if(rs>0) {
						
						isSuccess=true;
						
					}else {
						isSuccess=false;
					}			
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			
			
			return isSuccess;
			
		}
				

		
		
	//get all camp details for display
		
		public static ArrayList<campDetails>getAllCampDetails(){
			
			//create new arry object
			ArrayList<campDetails> list = new ArrayList<>();
			
			try {
				
				//get our dbconnection
				Connection con = connectionProvider.getConnection();
				
				//insert sql query
				String sql = "SELECT * FROM camp_details_table ORDER BY campId DESC ";
							
				//create statement
				PreparedStatement stmt = con.prepareStatement(sql);
				
	
				
				//execute the query
				ResultSet rs = stmt.executeQuery();
				
				//get details from db
				while (rs.next()) {
					
					int campId = rs.getInt("campId");
					String poster = rs.getString("poster");
					int campCat = rs.getInt("campCat");
					String organizationName = rs.getString("organizationName");
					String campDate = rs.getString("campDate");
					String campTime = rs.getString("campTime");
					String address = rs.getString("address");
					String location = rs.getString("location");
					int expectedDonors = rs.getInt("expectedDonors");
					String arrangement = rs.getString("arrangement");
					String organizerName = rs.getString("organizerName");
					String organizerEmail = rs.getString("organizerEmail");
		
					
					//create an object docCategory class
					campDetails camp = new campDetails(campId,poster,campCat,organizationName,campDate,campTime,address,location,expectedDonors,arrangement,organizerName,organizerEmail);
					//set value into arrayList
					list.add(camp);
				}
				
				
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			
			
			return list;
			
		}
		
		
		
	

		//get count
		public static int getCount() {
			
			int total= 0;
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "SELECT COUNT(*) FROM camp_details_table ";
				
				//cerate statment
				PreparedStatement stmt = con.prepareStatement(sql);
				
								
				//execute query
				ResultSet rs = stmt.executeQuery();
				
				//if update is success return value
				if(rs.next()) {
					total = rs.getInt(1);
					System.out.println(total);
				}
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
				
			}
			return total;
		}
		
		
		
		
		
		
		
		//update camp poster
		
		public static boolean updateCampPoster(String poster,int cid) {
			
			boolean isSuccess = false;
			
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "UPDATE camp_details_table SET  poster=?  WHERE campId=? ";
						
				//cerate statment
				PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign data to sql query
				stmt.setString(1, poster);
				stmt.setInt(2, cid);
		
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
		
		//update camp details
		
		public static boolean updateCampDetails(int campId, int campCat, String organizationName, String campDate, String campTime,
				String address, String location, int expectedDonors, String arrangement, String organizerName,
				String organizerEmail) {
			
			boolean isSuccess = false;
			
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "UPDATE camp_details_table SET campCat=?, organizationName=?, campDate=?, campTime=?, address=?, "
						+ "location=?, expectedDonors=?, arrangement=?, organizerName=?, organizerEmail=? WHERE campId=? ";
						
				//cerate statment
				PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign data to sql query
				stmt.setInt(1, campCat);
				stmt.setString(2, organizationName);
				stmt.setString(3, campDate);
				stmt.setString(4, campTime);
				stmt.setString(5, address);
				stmt.setString(6, location);
				stmt.setInt(7, expectedDonors);
				stmt.setString(8, arrangement);
				stmt.setString(9, organizerName);
				stmt.setString(10, organizerEmail);
				stmt.setInt(11, campId);
		
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
		
		
		
	//camp details delete
		
		public static boolean campDetailsDelete(int cid) {
			
			boolean isSuccess = false;
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "DELETE FROM camp_details_table WHERE campId=? ";
				
				//cerate statment
				PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign the value
				stmt.setInt(1, cid);
				
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
		
		
		
		//add camp details uswer
		public static boolean addcampDetailsUsere( int campCat, String organizationName, String campDate, String campTime,
				String address, int exceptDonors, String arrangement, String organizerName,
				String organizerEmail) {
			
			boolean isSuccess = false;
			
				try {
					
					
					//get our dbconnection
					Connection con = connectionProvider.getConnection();
					
					//insert sql query
					String sql = "INSERT INTO camp_organize_confirm_table(campCat,organizationName,"
							+ "campDate,campTime,address,expectedDonors,arrangement,organizerName,organizerEmail) "
							+ "VALUES(?,?,?,?,?,?,?,?,?)";
								
					//create statement
					PreparedStatement stmt = con.prepareStatement(sql);
					
					//assign the value to the sql query
					stmt.setInt(1, campCat);
					stmt.setString(2, organizationName);
					stmt.setString(3, campDate);
					stmt.setString(4, campTime);
					stmt.setString(5, address);
					stmt.setInt(6, exceptDonors);
					stmt.setString(7, arrangement);
					stmt.setString(8, organizerName);
					stmt.setString(9, organizerEmail);
					
					//execute query
					int rs = stmt.executeUpdate();
					
					//check insert success or not
					if(rs>0) {
						
						isSuccess=true;
						
					}else {
						isSuccess=false;
					}			
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			
			
			return isSuccess;
			
		}
		
		
	
		//get all confirm camp details for display
		
				public static ArrayList<organizeDonationCamp>getAllConfirmCampDetails(){
					
					//create new arry object
					ArrayList<organizeDonationCamp> list = new ArrayList<>();
					
					try {
						
						//get our dbconnection
						Connection con = connectionProvider.getConnection();
						
						//insert sql query
						String sql = "SELECT * FROM camp_organize_confirm_table ORDER BY orgId DESC";
									
						//create statement
						PreparedStatement stmt = con.prepareStatement(sql);
						
						//execute the query
						ResultSet rs = stmt.executeQuery();
						
						//get details from db
						while (rs.next()) {
							
							int orgId = rs.getInt("orgId");
							int campCat = rs.getInt("campCat");
							String organizationName = rs.getString("organizationName");
							String campDate = rs.getString("campDate");
							String campTime = rs.getString("campTime");
							String address = rs.getString("address");
							int expectedDonors = rs.getInt("expectedDonors");
							String arrangement = rs.getString("arrangement");
							String organizerName = rs.getString("organizerName");
							String organizerEmail = rs.getString("organizerEmail");
				
							
							//create an object docCategory class
							organizeDonationCamp orgCamp = new organizeDonationCamp(orgId,campCat,organizationName,campDate,campTime,address,expectedDonors,arrangement,organizerName,organizerEmail);
							//set value into arrayList
							list.add(orgCamp);
						}
						
						
						
					}catch (Exception e) {
						e.printStackTrace();
					}
					
					
					
					return list;
					
				}
				

				
				
		//get all confirm camp details by orgId
		
		public static organizeDonationCamp getConfimCampDetailsByOrgId(int orgid) {
			
			//define object type variable for return purpose
			//it is inistionly null
			organizeDonationCamp org = null;
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "SELECT * FROM camp_organize_confirm_table WHERE orgId=? ";
					
				//create statement
				PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign value 
				stmt.setInt(1, orgid);
			
				
				//execute sql query
				ResultSet rs = stmt.executeQuery();
				
				//if the orgid is available in to the database, assign data 
				if(rs.next()) {
					
					org =  new organizeDonationCamp();
					
					org.setOrgId(rs.getInt("orgId")); 
					org.setCampCat(rs.getInt("campCat")); 
					org.setOrganizationName(rs.getString("organizationName")); 
					org.setCampDate(rs.getString("campDate"));  
					org.setCampTime(rs.getString("campTime"));  
					org.setAddress(rs.getString("address"));  
					org.setExceptDonors(rs.getInt("expectedDonors")); 
					org.setArrangement(rs.getString("arrangement"));  
					org.setOrganizerName(rs.getString("organizerName")); 
					org.setOrganizerEmail(rs.getString("organizerEmail")); 
				}
				
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			return org;
			
		}
		
	
		
	//organization camp details delete
		
		public static boolean organizationCampDetailsDelete(int orgid) {
			
			boolean isSuccess = false;
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "DELETE FROM camp_organize_confirm_table WHERE orgId=? ";
				
				//cerate statment
				PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign the value
				stmt.setInt(1, orgid);
				
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
		
		
		//get camp details for search
		
				public static List<campDetails>getCampDetailsBySearch(String searchData){
					
					//create new arry object
					List<campDetails> list = new ArrayList<>();
					
					try {
						
						//get our dbconnection
						Connection con = connectionProvider.getConnection();
						
						//insert sql query
						String sql = "SELECT * FROM camp_details_table WHERE organizationName LIKE '%"+searchData+"%' OR address LIKE '%"+searchData+"%' OR organizerName LIKE '%"+searchData+"%' OR organizerEmail LIKE '%"+searchData+"%' ";
									
						//create statement
						PreparedStatement stmt = con.prepareStatement(sql);
						
						//execute the query
						ResultSet rs = stmt.executeQuery();
						
						//get details from db
						while (rs.next()) {
							
							int campId = rs.getInt("campId");
							String poster = rs.getString("poster");
							int campCat = rs.getInt("campCat");
							String organizationName = rs.getString("organizationName");
							String campDate = rs.getString("campDate");
							String campTime = rs.getString("campTime");
							String address = rs.getString("address");
							String location = rs.getString("location");
							int expectedDonors = rs.getInt("expectedDonors");
							String arrangement = rs.getString("arrangement");
							String organizerName = rs.getString("organizerName");
							String organizerEmail = rs.getString("organizerEmail");
				
							
							//create an object docCategory class
							campDetails camp = new campDetails(campId,poster,campCat,organizationName,campDate,campTime,address,location,expectedDonors,arrangement,organizerName,organizerEmail);
							//set value into arrayList
							list.add(camp);
						}
						
						
						
					}catch (Exception e) {
						e.printStackTrace();
					}
					
					
					
					return list;
					
				}
				
				
				
				
			//get all camp details by category ID
				
			public static List<campDetails>getCampDetailsByCategoryId(int cid){
				
				List<campDetails> list = new ArrayList<campDetails>();
				
				
				try {
					
					//get our dbconnection
					Connection con = connectionProvider.getConnection();
					
					//insert sql query
					String sql = "SELECT * FROM camp_details_table WHERE campCat=? ORDER BY campId DESC";
								
					//create statement
					PreparedStatement stmt = con.prepareStatement(sql);
					
					stmt.setInt(1,cid);
					
					//execute the query
					ResultSet rs = stmt.executeQuery();
					
					//get details from db
					while (rs.next()) {
						
						int campId = rs.getInt("campId");
						String poster = rs.getString("poster");
						int campCat = rs.getInt("campCat");
						String organizationName = rs.getString("organizationName");
						String campDate = rs.getString("campDate");
						String campTime = rs.getString("campTime");
						String address = rs.getString("address");
						String location = rs.getString("location");
						int expectedDonors = rs.getInt("expectedDonors");
						String arrangement = rs.getString("arrangement");
						String organizerName = rs.getString("organizerName");
						String organizerEmail = rs.getString("organizerEmail");
			
						
						//create an object docCategory class
						campDetails camp = new campDetails(campId,poster,campCat,organizationName,campDate,campTime,address,location,expectedDonors,arrangement,organizerName,organizerEmail);
						//set value into arrayList
						list.add(camp);
					}
					
					
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				
				
				return list;
				
				
				
			}
			
			
			
			
			//get all camp details by category ID
			
			public static campDetails getCampDetailsByCampId(int campid){
				
				campDetails cd = null;
				
				
				try {
					
					//get our dbconnection
					Connection con = connectionProvider.getConnection();
					
					//insert sql query
					String sql = "SELECT * FROM camp_details_table WHERE campId=? ";
								
					//create statement
					PreparedStatement stmt = con.prepareStatement(sql);
					
					stmt.setInt(1,campid);
					
					//execute the query
					ResultSet rs = stmt.executeQuery();
					
					//get details from db
					while (rs.next()) {
						
						cd = new campDetails();
						
						cd.setCampId(rs.getInt("campId"));
						cd.setPoster(rs.getString("poster"));
						cd.setCampCat(rs.getInt("campCat"));
						cd.setOrganizationName(rs.getString("organizationName"));
						cd.setCampDate(rs.getString("campDate"));
						cd.setCampTime(rs.getString("campTime"));
						cd.setAddress(rs.getString("address"));
						cd.setLocation(rs.getString("location"));
						cd.setExceptDonors(rs.getInt("expectedDonors"));
						cd.setArrangement(rs.getString("arrangement"));
						cd.setOrganizerName(rs.getString("organizerName"));
						cd.setOrganizerEmail(rs.getString("organizerEmail"));
						
						
					}
					
					
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				
				
				return cd;
				
				
				
			}
			
			
			
			//get all camp category details by category ID
			
			public static campCategory getCampCatgeoryDetailsByCampId(int cid){
				
				campCategory cd = null;
				
				
				try {
					
					//get our dbconnection
					Connection con = connectionProvider.getConnection();
					
					//insert sql query
					String sql = "SELECT * FROM camp_category_table WHERE cId=? ";
								
					//create statement
					PreparedStatement stmt = con.prepareStatement(sql);
					
					stmt.setInt(1,cid);
					
					//execute the query
					ResultSet rs = stmt.executeQuery();
					
					//get details from db
					while (rs.next()) {
						
						cd = new campCategory();
						
						cd.setCid(rs.getInt("cId"));
						cd.setCampName(rs.getString("campName"));
			
						
					}
					
					
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				
				
				return cd;
				
				
				
			}


		
}
