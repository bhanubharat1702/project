<%@page import="Emailpackage.DbConnection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Approve Leave</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" />
<!-- <style type="text/css">

	@import url("layout.css");

</style> -->
</head>
<body>

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


<div id="wrapper">
  <div id="content">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
	
	<% 
	  try
  {
  
  
		  Connection con=DbConnection.getConnection();
		 Statement stmt=con.createStatement();
		 
       	 String t1=request.getParameter("id").trim();
		 String t2=request.getParameter("nod").trim();
		 String t3=request.getParameter("tl").trim();


      
		//out.println(t3+","+t2+","+t1);
       if(t3.equals("EL") || t3.equals("ML") || t3.equals("CL") || t3.equals("PL"))
	   {
	   
        PreparedStatement pstmt=con.prepareStatement("update lmaster set lavailed=lavailed+?,el=el-? where id=? ");   
		
		
        	pstmt.setString(1,t2);
            pstmt.setString(2,t2);
            pstmt.setString(3,t1);
    
   
            pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
			///////////////////////
			
	        PreparedStatement pstmt1=con.prepareStatement("update lapp set status='Approved' where id=?");   
		
		
        	pstmt1.setString(1,t1);
    
   
            pstmt1.executeUpdate(); 
                    
            
            pstmt1.close();  

            con.close(); 
			out.println("<h1 align=center><b style='color:#000'> Leave  Approved successfully</b></h1>");

		}		 
	
		
    }
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	
	
	 %>
    <p>&nbsp;</p>
  </div>
	
</div>
</body>
</html>