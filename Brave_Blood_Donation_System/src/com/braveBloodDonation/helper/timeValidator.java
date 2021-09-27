package com.braveBloodDonation.helper;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

public class timeValidator {
	
	public static boolean validateJavaTime(String strTime) {
		
		boolean isSuccess = false;
		
		try {
			
			/* Check if date is 'null' */
			if (strTime.trim().equals(""))
			{
				isSuccess = false;
			    return isSuccess;
			}
			/* Date is not 'null' */
			else
			{
			    /*
			     * Set preferred date format,
			     * For example MM-dd-yyyy, MM.dd.yyyy,dd.MM.yyyy etc.*/
				DateFormat df = new SimpleDateFormat("HH:mm");
				df.setLenient(false);
			    /* Create Date object
			     * parse the string into date 
		             */
			    try
			    {
			        Date time =  df.parse(strTime); 
			        System.out.println(time+" is valid time format");
				    isSuccess = true;
				    return isSuccess;
			    }
			    /* Date format is invalid */
			    catch (ParseException e)
			    {
			        System.out.println(strTime+" is Invalid Date format");
			        isSuccess = false;
			        return isSuccess;
			    }
			 
			}
		   
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}


