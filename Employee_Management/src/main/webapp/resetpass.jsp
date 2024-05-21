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
.style1 {	font-size: 36px;
	font-weight: bold;
}
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
			<li class="first"><a href="index.jsp" id="main-menu1" accesskey="1" title="">Home</a></li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
			<h2>Reset Password</h2>
	  </div>
		<div id="right">
		 <form id="form1" name="form1" method="post" action="">
                    <div style="width:500px; alignment:center">
                      <table width="200" border="0" align="center" cellspacing="2">
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td rowspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                          <td><strong>Email</strong></td>
                          <td><input type="email" name="textfield" required="required"/></td>
                        </tr>
                        <tr>
                          <td><input type="submit" name="Submit" value="Forgot Password" /></td>
                          <td><input type="reset" name="Submit2" value="Reset" /></td>
                          <td>&nbsp;</td>
                        </tr>
                      </table>
                      <div align="center"></div>
                    </div>
		          </form>
 <%@page import="javax.mail.*"%>
                  <%@page import="javax.mail.internet.*"%>
                  <%@page import="javax.activation.*"%>
                  <%@page import="java.util.Random"%>
                  <%@page import="javax.swing.JOptionPane"%>
                  <%@page import="java.util.Properties"%>
                  <%@page import="java.util.*,java.io.*"%>
                  <%@page import ="java.sql.*"%>
                  <%@page import ="Emailpackage.*"%>
                  <%
  if(request.getParameter("Submit")!= null)
   	{
	
	String mailid = request.getParameter("textfield");
	out.println("chkmailid="+mailid);
 	Random rand = new Random();

	  double dot1=rand.nextInt();
          String pwd="";
          pwd=pwd.valueOf(dot1);

	try 
        {


	
	
     Connection con = DbConnection.getConnection(); 
		
		Statement stmt=con.createStatement();
	
	  ResultSet rs;			
	  rs=stmt.executeQuery("select * from emp where email="+"'"+mailid+"'");
		int found=0;
	      while(rs.next())
    	  {
		
				found++;
			}

		if(found==0)
		{
				out.println("Sorry, invalid login");
			
		}
		else
		{	
	
	  
	  
      
		  String str="Update emp set p=? where email=?";
	//	  out.println(str);
		  		PreparedStatement psmt =con.prepareStatement(str);
				psmt.setString(1,pwd);
				psmt.setString(2,mailid);
				psmt.executeUpdate();
				//out.println(s1+","+s3);
				psmt.close();
				rs.close();

					//	out.println(dot1+mailid);

	
		}	
	
	String emailto="mailid";
Emailclass new1=new Emailclass();


new1.SendMail(emailto,pwd);
out.println("Sent Mail Successfully to your registered Email Id.....");
        }
        catch(Exception ex)
        {
            out.println(ex);
        }
}
%>
		  <h2 align="center" class="bigger">&nbsp;</h2>
		  <p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
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
		