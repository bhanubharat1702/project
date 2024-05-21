<%@page import="Emailpackage.DbConnection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>BSP</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!-- <link href="default.css" rel="stylesheet" type="text/css" /> -->
<link href="style.css" rel="stylesheet" type="text/css" />
<style type="text/css">

<!--
	/* @import url("layout.css"); */
-->
</style>
<style type="text/css">
<!--
	/* @import url("layout.css"); */
.style1 {font-size: 18px}
-->
</style>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  font-size:12px;
  width: 100%;
  color:#000;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
  font-size:12px;
}

#customers tr:nth-child(even){background-color: #81A4F5;}

#customers tr:hover {background-color: #249BBD;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color:#003399;
  color: white;
  font-size:12px;
}
</style>

</head>
<body>
<div id="wrapper">
	<div id="main-menu">
		<ul>
			<li><a href="index.jsp" id="logo1"><h1>BSP</h1></a></li>
			<li class="first"><a href="adminhomepage.jsp" id="main-menu1" accesskey="1" title="">Back</a></li>
			<li class="first"><a href="regemployee.jsp" id="main-menu1" accesskey="1" title="">Register New Emp</a></li>
			<li class="first"><a href="empedn.jsp" id="main-menu1" accesskey="1" title="">Register Emp Edu Details </a></li>
		    <li class="first"><a href="empskill.jsp" id="main-menu1" accesskey="1" title="">Skill Details </a></li>
		    <li class="first"><a href="empcert.jsp" id="main-menu1" accesskey="1" title="">Certification Details </a></li>
		</ul>
	</div>
  <div id="content">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p align="center"><span class="bigger">
      <%@page import ="java.sql.*"%>
      <%@page import="java.util.*,java.io.*,java.text.*"%>
      <% 
	  try
  {
  
  
       Connection con= DbConnection.getConnection(); 
		 Statement stmt=con.createStatement();
		 
       	 String t1=request.getParameter("reqid").trim();
	     
   
        PreparedStatement pstmt=con.prepareStatement("update reimburse set status='Approved' where reqid=?");   
		
		
        	pstmt.setString(1,t1);
    
   
            pstmt.executeUpdate(); 
                    
            
            pstmt.close();  

            con.close(); 
			out.println("<h1 align=center><b style='color:#000'> Reimbursement Approved successfully</b></h1>");

				 
	
		
    }
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	
	
	 %>
    </span></p>
    <p></p>
    <p>&nbsp;</p>
  </div>
	
</div>
</body>
</html>

			