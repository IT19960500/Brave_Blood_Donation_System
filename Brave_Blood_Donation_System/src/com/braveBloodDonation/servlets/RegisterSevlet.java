package com.braveBloodDonation.servlets;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.braveBloodDonation.dao.UserDao;
import com.braveBloodDonation.entities.User;



@MultipartConfig
@WebServlet("/RegisterSevlet")

public class RegisterSevlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//get values from input form
			
		
				String user_fname = request.getParameter("user_fname");
				String user_lname = request.getParameter("user_lname");
				String user_email = request.getParameter("user_email");
				String user_nic = request.getParameter("user_nic");
				String user_dob = request.getParameter("user_dob");
				String user_gender = request.getParameter("user_gender");
				String user_weight = request.getParameter("user_weight");
				String user_height =  request.getParameter("user_height");
				String user_username =  request.getParameter("user_username");
				String user_password =  request.getParameter("user_password");
				String userconPassword =  request.getParameter("confirmpassword");
				Part part = request.getPart("user_image");

				
				System.out.println(user_nic);
				
				PrintWriter out = response.getWriter();
				
				//assign to file name
				String fileName = part.getSubmittedFileName();
				
				
				if(user_password.equals(userconPassword)) {
					
					System.out.println(fileName);
					
					
					//file write process
					InputStream is = part.getInputStream();
					byte []data = new byte[is.available()];
					
					is.read(data);
					
					//get img folder real path
					@SuppressWarnings("deprecation")
					String folderPath = request.getRealPath("/")+"images"+File.separator+fileName;
					
					System.out.println(folderPath);
					
					//set real file path our img file
					FileOutputStream fos = new FileOutputStream(folderPath);		
					
					//write the image in img folader
					fos.write(data);
					fos.flush();
					fos.close();
					
					
					
					boolean istrue = UserDao.saveUser(user_fname, user_lname, user_email, user_nic, user_dob, user_gender, user_weight, user_height, user_username, user_password, fileName);
					
					if (istrue == true) {
						
						//create session and pass the msg to the login jsp page
						/*HttpSession session = request.getSession();
						session.setAttribute("msg", session);
						response.sendRedirect("home.jsp");*/
						
						User user = UserDao.getUserDetailsByEmailaAndPassword(user_username, user_password);
						
						//create session
						HttpSession session = request.getSession();
						session.setAttribute("curretUser",user );
						response.sendRedirect("home.jsp");
						
					}
					
					else
						out.print("error");
				}else {
					out.print("password miss match");
				}
				
				
					

	}

}
