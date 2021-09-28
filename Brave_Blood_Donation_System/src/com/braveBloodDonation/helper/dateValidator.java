package com.braveBloodDonation.helper;


import java.text.SimpleDateFormat;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

public class dateValidator {
	
	
	public static boolean validateJavaDate(String strDate) {
		
		boolean isSuccess = false;
		
		try {
			
			/* Check if date is 'null' */
			if (strDate.trim().equals(""))
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
			    SimpleDateFormat sdfrmt = new SimpleDateFormat("MM/dd/yyyy");
			    sdfrmt.setLenient(false);
			    /* Create Date object
			     * parse the string into date 
		             */
			    try
			    {
			        java.util.Date javaDate =  sdfrmt.parse(strDate); 
			        System.out.println(javaDate+" is valid date format");
				    isSuccess = true;
				    return isSuccess;
			    }
			    /* Date format is invalid */
			    catch (ParseException e)
			    {
			        System.out.println(strDate+" is Invalid Date format");
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
