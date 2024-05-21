<%@page import="Emailpackage.DbConnection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>LogIn(Employee)</title>
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
				<h2>Login For Employee</h2>
					<form id="form1" name="form1" method="post" action="">
						
						<div class="input-box">
							<span class="icon">
								<ion-icon name="person-outline"></ion-icon>
							</span>
							<input  type="text" name="textfield1" id="textfield1" required="required" />
							<label>Employee Id</label>
						</div>
						
						<div class="input-box">
							<span class="icon">
								<ion-icon name="mail-outline"></ion-icon>
							</span>
							<input  input type="text" name="textfield2" id="textfield2" required="required"/>
							<label>Email</label>
						</div>
						
						<div class="input-box">
							<span class="icon">
								<ion-icon name="lock-closed"></ion-icon>
							</span>
							<input type="password" name="textfield3" id="textfield3"required="required"/>
							<label>Password</label>
						</div>
					<div class="bp">
						<button type="submit" name="button" id="button" value="Sign In">Login</button>
						<button type="reset" name="button2" id="button2" value="reset">Reset</button>
					</div>
				</form>
				</div>
				</div>
				</div>
				











	
		<!-- <div id="right">
		  <form id="form1" name="form1" method="post" action="">
              <p>&nbsp;</p>
              <table  border="1">
                <tr>
                  <td class="style10"><strong>Employee Id </strong></td>
                  <td class="style10"><strong>
                  
                  
                    <input type="text" name="textfield1" id="textfield1" required="required" />
                  </strong></td>
                  <td width="287" rowspan="3" class="style10"><img src="images/login_icon.gif" width="276" height="249" /></td>
                </tr>
                <tr>
                  <td width="56" class="style10"><strong>User Name</strong></td>
                  <td width="144" class="style10"><strong>
                  <input type="text" name="textfield2" id="textfield2" required="required" />
                  </strong></td>
                </tr>
                <tr>
                  <td class="style10"><strong>Passwrod</strong></td>
                  <td class="style10"><strong>
                  <input type="password" name="textfield3" id="textfield3"required="required" />
                  </strong></td>
                </tr>
                <tr>
                  <td colspan="2" class="style8"><label>
                      <div align="center">
                        <input type="submit" name="button" id="button" value="Sign In" />
                        <input type="reset" name="button2" id="button2" value="reset" />
                      </div>
                    </label></td>
                   <td class="style8"><a href="resetpass.jsp">ForgotPassword</a></td>
                </tr>
              </table>
            <p>&nbsp;</p>
              <p>&nbsp;</p>
          </form>
 -->			<p class="bigger"><%@page import ="java.sql.*"%>
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
     
    
   
      String id=request.getParameter("textfield1").trim();
      String u=request.getParameter("textfield2").trim();
      String p=request.getParameter("textfield3").trim();
      

	     rs=stmt.executeQuery("select * from emp where email="+"'"+u+"'"+" and p="+"'"+p+"'");
      String s="",s1="";
      int found=0;
	  String nm="",em="",pho="";
	  out.println("a");
      while(rs.next())
      {
	  		nm=rs.getString(2);
  		em=rs.getString(5);
		pho=rs.getString(14);
			
			found++;
			out.println("found");
				  
		}
		  out.println("b");
		 if(found!=0)
		 {
		 				 session.setAttribute("id",id); 
				 session.setAttribute("email",em); 
				 		out.println(em);	 
			 				 session.setAttribute("name",nm); 
							  session.setAttribute("pho",pho); 
//		out.println(nm);	 
//		out.println(nm);	 
		                 response.sendRedirect("emphomepage.jsp"); 
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
%>&nbsp;</p>
			<p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
	  </div>
	</div>
	
	
	
		<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
		<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
	</body>
</html>
		