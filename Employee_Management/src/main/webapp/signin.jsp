<%@page import="Emailpackage.DbConnection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>LogIn(Admin)</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div id="main-menu">
			<ul>
				<a href="index.jsp"><h1 id="logo">BSP</h1></a>
				<li><a href="index.jsp" id="main-menu1" accesskey="1" title="">Home </a></li>
				<li><a href="aboutus.jsp" id="main-menu1" accesskey="1" title="">About Us </a></li>
				<li><a href="reachus.jsp" id="main-menu2" accesskey="2" title="">Reach us </a></li>
				<li><a href="signin.jsp" id="main-menu4" accesskey="4" title="">LogIn (Admin) </a></li>
				<li><a href="signinemp.jsp" id="main-menu5" accesskey="5" title="">SignIn (Employees) </a></li>
			</ul>
		</div>
		<p class="bigger">&nbsp;</p>
		<p class="bigger">&nbsp;</p>
		<div class=content>
			<div class="logwrapper">
				<div class="form-box login">
					<h2>Login For Admin</h2>
						<form id="form1" name="form1" method="post" action="">
							<div class="input-box">
								<span class="icon">
									<ion-icon name="mail-outline"></ion-icon>
								</span>
								<input  type="text" name="textfield1" id="textfield1" required="required">
								<label>UserName</label>
							</div>
							<div class="input-box">
								<span class="icon">
									<ion-icon name="lock-closed"></ion-icon>
								</span>
								<input name="textfield2" type="password" id="textfield2" required="required" >
								<label>Password</label>
							</div>
						<div class="bp">
							<button type="submit" name="button" id="button" value="Sign In">Login</button>
							<button type="reset" name="button2" id="button2" value="reset">Reset</button>
						</div>
					</form>

<%@page import ="java.sql.*"%>
<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
<%
	try
	{
	//String b=request.getParameter("Submit");
		if(request.getParameter("button")!= null)
		{
	   		Connection con = DbConnection.getConnection(); 
      		Statement stmt=con.createStatement();
      		ResultSet rs,rs1;
     
      		
      		String u=request.getParameter("textfield1").trim();
      		String p=request.getParameter("textfield2").trim();
     
      		
	     	rs=stmt.executeQuery("select * from adminlogin where u="+"'"+u+"'"+" and p="+"'"+p+"'");
      		String s="",s1="";
      		int found=0;
      		while(rs.next())
      		{
				found++;
  
			}

      		if(found==1)
		 	{
		 		session.setAttribute("email",u); 
				response.sendRedirect("adminhomepage.jsp"); 
			}
		  	else
		 	{
				out.println("<h1 align=center >Invalid Login... </h1>");
			}
            rs.close();
			stmt.close();
			con.close();	  
		}
	}
	catch(Exception e)
    { 
    out.println("Exception occured" +e);
    }
%>

	  		</div>
		</div>
	</div>


<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

</body>
</html>

			
		