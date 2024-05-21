<%@page import="Emailpackage.DbConnection"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Free website template from 4Templates.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!-- <link href="default.css" rel="stylesheet" type="text/css" /> -->
<link href="style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
	/* @import url("layout.css"); */
-->
</style>

</head>
<body>
<div id="wrapper">
	<div id="header">
		<h1>hrms.com</h1>
		<h2>human resource tracking portal </h2>
	</div>
	<div id="main-menu">
		<ul>
			<li class="first"><a href="empchpassword.jsp" id="main-menu1" accesskey="1" title="">Change Password </a></li>
			<li><a href="trackleaves.jsp" id="main-menu2" accesskey="2" title="">Track Leaves </a></li>
			<li><a href="applyleave.jsp" id="main-menu3" accesskey="3" title="">Apply Leave </a></li>
			<li><a href="viewpayslip.jsp" id="main-menu4" accesskey="4" title="">View Payslip </a></li>
			<li><a href="addremembers.jsp" id="main-menu4" accesskey="4" title=""> Add Reimbursement </a></li>
			<li><a href="index.jsp" id="main-menu5" accesskey="5" title="">SignOut</a></li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
			<h2>Welcome Employee</h2>
<p><b>&nbsp;</b></p>

	  </div>
		<div id="right">
			<h2 class="bigger">&nbsp;</h2>
		  <form id="form1" name="form1" method="post" action="">
              <table width="354" border="1" align="center">
                <tr>
                  <td width="100">ID</td>
                  <td width="238"><label>
                  <input type="text" name="textfield" readonly value="<%String s=(String) session.getAttribute("id"); out.println(s); %>">
                  </label></td>
                </tr>
                <tr>
                  <td>Current Date/Applied on</td>
                  <td><label>
                  <input type="text" name="textfield3" value = "<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%
                  Calendar  calendar = null;
	    calendar = Calendar.getInstance();
	    java.util.Date trialTime = new java.util.Date();
	    calendar.setTime(trialTime);	


	    int year = calendar.get(Calendar.YEAR);
	    int month = 1 + calendar.get(Calendar.MONTH);
	    
	    int dayofmonth = calendar.get(Calendar.DAY_OF_MONTH);

	    String date = month + "/" + dayofmonth + "/" +  year;
		
		String dot="";

 	    int hour = calendar.get(Calendar.HOUR_OF_DAY);
	    int min = calendar.get(Calendar.MINUTE);
	    int sec = calendar.get(Calendar.SECOND);
 dot = dot +" "+ hour + ":" + min  ; 

		
         date=month+"/"+dayofmonth+"/"+year+"  "+dot;
   out.println(date);

				   %>" readonly>
                  </label></td>
                </tr>
<tr>
                  <td>leave from</td>
                  <td><label>
                    <input type="date" name="textfield2" />
                  </label></td>
                </tr>
                <tr>
                  <td>leave Upto</td>
                  <td><label>
                  <input name="textfield4" type="date" id="textfield4" />
                  </label></td>
                </tr>
                <tr>
                  <td>Nod</td>
                  <td><select name="select">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                  </select>                  </td>
                </tr>
                <tr>
                  <td>Tleave</td>
                  <td><select name="select2">
                    <option value="EL">EL</option>
                    <option value="ML">ML</option>
                    <option value="PL">PL</option>
                    <option value="CL">CL</option>
                  </select></td>
                </tr>
                <tr>
                  <td colspan="2"><input type="submit" name="Submit" value="Submit" />
                  <input type="reset" name="Submit2" value="Reset" /></td>
                </tr>
            </table>
              <label></label>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
          </form>
			<p class="bigger">&nbsp;</p>
			<p align="center" class="bigger">
			  <%
   try
  {
  
  
  	if(request.getParameter("Submit")!= null)
	{

       Connection con= DbConnection.getConnection(); 
		 Statement stmt=con.createStatement();
		 
		 
		 
		 
       	 String t1=request.getParameter("textfield").trim();
		 String t2=request.getParameter("textfield3").trim();
		 String t3=request.getParameter("select").trim();
		 String t4=request.getParameter("select2").trim();

      
	  PreparedStatement pstmt1=con.prepareStatement("delete from  lapp where id=?");   
        	pstmt1.setString(1,t1);
           
           
   
            pstmt1.executeUpdate(); 
                    
            
            pstmt1.close();  
        

       
        PreparedStatement pstmt=con.prepareStatement("insert into lapp values(?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,"Pending");
           
           
   
            pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("<h1 align=center><b style='color:#000'>Apply Leave success</b></h1>");

		 
	
		}
    }
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	
%>
			</p>
		</div>
	</div>
	<div class="hr1">
		<hr />
	</div>
	<div id="footer">
		<ul>
			<li><a href="#" title="">Home</a></li>
			<li><a href="#" title="">Products</a></li>
			<li><a href="#" title="">Services</a></li>
			<li><a href="#" title="">About Us</a></li>
			<li><a href="#" title="">Contact Us</a></li>
		</ul>
		<p>Copyright &copy; 2018. All rights reserved.</p>
	</div>
</div>
</body>
</html>

			<center><span style="width: 100%; font-family: helvetica; font-size: 6px;">
			Design downloaded from <a href="http://www.freewebtemplates.com" style="font-family: helvetica; font-size: 6px;">FreeWebTemplates.com</a><br>
			Free web design, web templates, web layouts, and website resources!
			</span></center><br><br>
		