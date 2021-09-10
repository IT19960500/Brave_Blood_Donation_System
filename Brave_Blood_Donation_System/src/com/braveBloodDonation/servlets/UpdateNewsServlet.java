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


import com.braveBloodDonation.dao.NewsDao;



@MultipartConfig
@WebServlet("/UpdateNewsServlet")
public class UpdateNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		//get the data from form
				int newsId = Integer.parseInt(request.getParameter("newsId"));
				String newsAuthorID= request.getParameter("newsAuthorID");
				String newsHeading= request.getParameter("newsHeading");
				String newsDescription= request.getParameter("newsDescription");
				String newsArticle=request.getParameter("newsArticle");
				Part part = request.getPart("newsPhoto"); 
				System.out.println(newsHeading);
				
		 
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
				
				
					
					boolean isTrue = NewsDao.updateNews(newsId, newsAuthorID, newsHeading, newsDescription, fileName,newsArticle);
					
					//update success or not
					if(isTrue == true) {
						out.print("done");
					}else {
						out.print("error");
					}
				}
	}


