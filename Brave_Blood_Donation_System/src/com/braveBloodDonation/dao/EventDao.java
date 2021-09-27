package com.braveBloodDonation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.braveBloodDonation.entities.Event;
import com.braveBloodDonation.helper.connectionProvider;

public class EventDao {
	
	//Insert into db
		public static boolean insertEvent (String eventAuthorID,String eventHeading,String eventDescription, String eventPhoto,String eventArticle) {
			
			boolean isSuccess=false;
		
			try {

				//get our dbconnection
				Connection con = connectionProvider.getConnection();
				
				//insert sql query
				String sql = "INSERT INTO event(eventAuthorID,eventHeading,eventDescription,eventPhoto,eventArticle) VALUES(?,?,?,?,?)";
							
				//create statement
				java.sql.PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign the value to the sql query
				stmt.setString(1, eventAuthorID);
				stmt.setString(2, eventHeading);
				stmt.setString(3, eventDescription);
				stmt.setString(4, eventPhoto);
				stmt.setString(5, eventArticle);
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
		
		//retrieve from db
		public static ArrayList<Event>getAllEvent(){
			
			//create new arry object
			ArrayList<Event> list = new ArrayList<>();
			
			try {
				
				//get our dbconnection
				Connection con = connectionProvider.getConnection();
				
				//insert sql query
				String sql = "SELECT * FROM event ORDER BY eventId DESC";
							
				//create statement
				java.sql.PreparedStatement stmt = con.prepareStatement(sql);
				
				//execute the query
				ResultSet rs = stmt.executeQuery();
				
				//get details from db
				while (rs.next()) {
					
					int eventId = rs.getInt("eventId");
					String eventAuthorID = rs.getString("eventAuthorID");
					String eventHeading=rs.getString("eventHeading");
					String eventDescription=rs.getString("eventDescription");
					String eventPhoto=rs.getString("eventPhoto");
					String eventArticle=rs.getString("eventArticle");
					
					//create an object docCategory class
					Event  event = new Event(eventId,eventAuthorID,eventHeading,eventDescription,eventPhoto,eventArticle);
					//set value into arrayList
					list.add(event);
				}
				
				
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;
			
		}

		//update events
		public static boolean updateEvent(int eventId, String eventAuthorID,String eventHeading,String eventDescription, String eventPhoto,String eventArticle) {
			
			boolean isSuccess = false;
			
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "UPDATE event SET  eventAuthorID=?,eventHeading=?,eventDescription=?,eventPhoto=?,eventArticle=?  WHERE eventId=? ";
						
				//cerate statment
				java.sql.PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign data to sql query
				
				stmt.setString(1, eventAuthorID);
				stmt.setString(2, eventHeading);
				stmt.setString(3, eventDescription);
				stmt.setString(4, eventPhoto);
				stmt.setString(5, eventArticle);
				stmt.setInt(6, eventId);
		
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
		
		//delete news
		public static boolean deleteEvent(int eventId) {
			
			boolean isSuccess = false;
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "DELETE FROM event WHERE eventId=? ";
				
				//cerate statment
				PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign the value
				stmt.setInt(1, eventId);
				
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
		
		public static Event getEventDetailsById (int eventId) {
			
			Event event= null;
			
			try {
				
				//get our db connecrtion
				Connection con = connectionProvider.getConnection();
				
				String sql = "SELECT * FROM event ORDER BY eventId=?";
				
				//cerate statment
				PreparedStatement stmt = con.prepareStatement(sql);
				
				//assign the value
				stmt.setInt(1, eventId);
				
				//execute the query
				ResultSet rs = stmt.executeQuery();
				
					while (rs.next()) {
					
					event = new Event();
					event.setEventId(rs.getInt("eventId"));
					event.setEventAuthorID(rs.getString("eventAuthorID"));
					event.setEventHeading(rs.getString("eventHeading"));
					event.setEventDescription(rs.getString("eventDescription"));
					event.setEventPhoto(rs.getString("eventPhoto"));
					event.setEventArticle(rs.getString("eventArticle"));
					
					
					
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return event;
		}
		
		public static List<Event>getSearchEvent(String eventAuthorID){
			List<Event> list = new ArrayList<>();
			try {
			
				//get our dbconnection
				Connection con = connectionProvider.getConnection();
				
				//create sql query
				String sql = "SELECT * FROM event WHERE eventAuthorID LIKE '%"+eventAuthorID+"%'";    
						
				//cerate statment
				java.sql.PreparedStatement stmt = con.prepareStatement(sql);

				
				//execute the query
				ResultSet rs = stmt.executeQuery();
				
				//get details from db
				while (rs.next()) {
					
					int eventId = rs.getInt("eventId");
					String eventAuthorID1 = rs.getString("eventAuthorID");
					String eventHeading=rs.getString("eventHeading");
					String eventDescription=rs.getString("eventDescription");
					String eventPhoto=rs.getString("eventPhoto");
					String eventArticle=rs.getString("eventArticle");
					
					//create an object docCategory class
					Event  event = new Event(eventId,eventAuthorID1,eventHeading,eventDescription,eventPhoto,eventArticle);
					//set value into arrayList
					list.add(event);
				
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return list;
			}
}

