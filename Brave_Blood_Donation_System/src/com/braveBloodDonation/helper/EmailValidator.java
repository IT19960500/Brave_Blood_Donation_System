package com.braveBloodDonation.helper;

import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class EmailValidator {

	 //private static Matcher matcher;

public class EmailValidator {

	  //private static Matcher matcher;


	  private static  Pattern p = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

	  public  static boolean validateEmail(String hex){
		  	  
		  boolean isSuccess = false;
		  Matcher matcher = p.matcher(hex);
	       		  
		  try {
			  
			
			  if(matcher.find()) {
				  isSuccess = true;
				  System.out.println("Correct!");
			  }else {
				  isSuccess = false;
			  }
			  
		} catch (Exception e) {
			e.printStackTrace();
		}
		  

		  return isSuccess;
	  }


}
