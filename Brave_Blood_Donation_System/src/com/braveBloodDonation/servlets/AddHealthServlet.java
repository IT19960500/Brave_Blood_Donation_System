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
import javax.servlet.http.Part;


import com.braveBloodDonation.dao.HealthDao;

/**
 * Servlet implementation class AddHealthServlet
 */
@MultipartConfig
@WebServlet("/AddHealthServlet")
public class AddHealthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String healthAuthorID= request.getParameter("healthAuthorID");
		String healthHeading=request.getParameter("healthHeading");
		String healthDescription=request.getParameter("healthDescription");
		String healthArticle=request.getParameter("healthArticle");
		Part part = request.getPart("healthPhoto"); 
		
		System.out.println(healthHeading);

		PrintWriter out = response.getWriter();
		String fileName = part.getSubmittedFileName();
		
		
		System.out.println(fileName);
		
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
		
		
		boolean isSuccess=HealthDao.insertHealth(healthAuthorID, healthHeading, healthDescription, fileName,healthArticle);
		
		
		
		if(isSuccess==true) {
			
			out.print("Success");
			
		}else {
			
			out.print("Error");
		}
	}

}
