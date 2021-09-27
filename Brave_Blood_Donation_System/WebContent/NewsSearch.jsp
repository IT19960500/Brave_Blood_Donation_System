<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
            <div class="form-group col-12 p-0">
             <%
                Connection con;
                PreparedStatement pst;
                ResultSet rs;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/brave_blood_donation_db?autoReconnect=true&useSSL=false","root","root");
                //int newsId = Integer.parseInt(request.getParameter("newsId"));
                //String newsIdString=String.valueOf(newsId);
                String newsID2=request.getParameter("newsId");
                 out.print("<h3>Donor Details</h3>");
                if (newsID2== null  ) 
                {
                  pst = con.prepareStatement("select * from news");
                  rs = pst.executeQuery();
                   
                 
                }
               else {
                pst = con.prepareStatement("select * from news where newsId =?");
                pst.setString(1, newsID2);
                rs = pst.executeQuery();
                 while(rs.next())
                 {   
                     out.print("<Table border=1 bgcolor=yellow>");
                     out.print("<TR>");
                     out.print("<TD>" + rs.getString("newsId") + "<TD>");
                     out.print("<TD>" + rs.getString("newsArticle") + "<TD>");
                     out.print("<TD>" + rs.getString("newsArticle")+ "<TD>");
                     out.print("</TR>");
                      out.print("</Table>");
                 }
                }
              %>     
              </div>
           </div>         
</body>

<body>
        <div class="container">
             <div class="form-group col-6 p-0">
                 <form id="form" method="post" action="NewsSearch.jsp" class="form-horizontal">
                       <div class="form-group col-md-6"> 
                           <label>Email</label>
  			    <input type="text" name="newsId" class="form-control" id="emailInput" placeholder="Email">
                        </div>
                      <div class="form-group col-md-6" align="center"> 
 
                        <Button class="btn btn-success" style="width: 80px;">Submit</Button>
              
                        </div>
                     
                 </form>
                 
             </div>
         </div>   
    </body>
    
</html>