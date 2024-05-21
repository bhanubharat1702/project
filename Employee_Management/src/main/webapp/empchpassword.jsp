<%@page import="Emailpackage.DbConnection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Change Password</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="style.css" rel="stylesheet" type="text/css" />
	<link href="table1.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="wrapper">
	<div id="main-menu">
		<ul>
			<li><a href="index.jsp" id="logo1"><h1>BSP</h1></a></li>
			<li><a href="emphomepage.jsp" id="main-menu5" accesskey="5" title="">Home</a></li>
			<li class="first"><a href="empchpassword.jsp" id="main-menu1" accesskey="1" title="">Change Password </a></li>
			<li><a href="trackleaves.jsp" id="main-menu2" accesskey="2" title="">Track Leaves </a></li>
			<li><a href="applyleave.jsp" id="main-menu3" accesskey="3" title="">Apply Leave </a></li>
			<li><a href="viewpayslip.jsp" id="main-menu4" accesskey="4" title="">View Payslip </a></li>
			<li><a href="addremembers.jsp" id="main-menu4" accesskey="4" title=""> Add Reimbursement </a></li>
			
		</ul>
	</div>
	
	<div id="content">
		<div id="center">
			<h2>Change password</h2>
	  </div>
		<div id="right">
			<h2 class="bigger">&nbsp;</h2>
			<form id="form1" name="form1" method="post" action="">
              <p>&nbsp;</p>
              <table  >
                <tr>
                  <td class="size">Old Password </td>
                  <td ><label>
                    <input name="textfield1" type="password" id="textfield1"  required="required" />
                  </label></td>
                </tr>
                <tr>
                  <td class="size">New Password </td>
                  <td><label>
                  <input type="password" name="textfield2" required="required"/>
                  </label></td>
                </tr>
                <tr>
                  <td class="size">Confirm Password</td>
                  <td><label>
                    <input type="password" name="textfield3" required="required"/>
                  </label></td>
                </tr>
                <tr>
                  <td colspan="2"><label>
                    <input type="submit" name="Submit" value="Submit" />
                    <input type="reset" name="Submit2" value="Reset" />
                  </label></td>
                </tr>
              </table>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
			</form>
			<p align="center" class="bigger">
			  <%@page import ="java.sql.*"%>
              <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
              <%
	  try
	 { 
	 String b=request.getParameter("Submit");
	if(request.getParameter("Submit")!= null)
{
		 Connection con = DbConnection.getConnection();
		  Statement stmt=con.createStatement();
		  ResultSet rs,rs1,rs2;
		  
		  
		  String e=(String)session.getAttribute("email");
		  
		  String op=request.getParameter("textfield1").trim();//old
		  String np=request.getParameter("textfield2").trim();//new
		  String cp=request.getParameter("textfield3").trim();//confirm
		  
		  

	rs=stmt.executeQuery("select * from emp where email="+"'"+e+"'" +" and p="+"'"+op+"'");
	
		int found=0;
		while (rs.next())
		{ 
			
			
			found++;
			
		 }
		 
			if(found==1 && np.equals(cp))		  {
		  
		  String str="Update emp set p=? where email=?";
		  //out.println(str);
		  		PreparedStatement psmt =con.prepareStatement(str);
				psmt.setString(1,np);
				psmt.setString(2,e);
				psmt.executeUpdate();
				//out.println(s1+","+s3);
				psmt.close();
				rs.close();
				//response.sendRedirect("editprofileack.jsp");
				out.println("<h2>Successfully Changed Password</h2>");
		   
				con.close();
				
		}
		else
		{
			out.println("<h2>Something went wrong Sorry Please try again </h2>");
		}
		}
       }       catch(Exception ex)
			{
				 out.println(ex);
			 }
	%>
			</p>
			<p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
		</div>
	</div>
</div>
</body>
</html>