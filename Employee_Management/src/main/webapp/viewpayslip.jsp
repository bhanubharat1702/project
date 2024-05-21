<%@page import="Emailpackage.DbConnection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Track Leaves</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="style.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
		<style>
			#customers {
  				font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  				border-collapse: collapse;
  				font-size:12px;
  				width: 100%;
  				color:#c5c6c7;
			}

			#customers td, #customers th {
  				border: 1px solid #ddd;
  				padding: 8px;
  				font-size:12px;
			}

			#customers tr:nth-child(even){background-color: #45A29E;}

			#customers tr:hover {background-color: #66FCF1; color:black;}

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
			<li><a href="emphomepage.jsp" id="main-menu5" accesskey="5" title="">Home</a></li>
			<li class="first"><a href="empchpassword.jsp" id="main-menu1" accesskey="1" title="">Change Password </a></li>
			<li><a href="trackleaves.jsp" id="main-menu2" accesskey="2" title="">Track Leaves </a></li>
			<li><a href="applyleave.jsp" id="main-menu3" accesskey="3" title="">Apply Leave </a></li>
			<li><a href="viewpayslip.jsp" id="main-menu4" accesskey="4" title="">View Payslip </a></li>
			<li><a href="addremembers.jsp" id="main-menu4" accesskey="4" title=""> Add Reimbursement </a></li>
			
		</ul>
	</div>
  <div id="content">
    <p>&nbsp;</p>
    <p align="center"><span class="bigger">
      <%@page import ="java.sql.*"%>
      <%@page import="java.util.*,java.io.*,java.text.*"%>
      <%   
                                          
try
{
  
  	  
		  String eid=(String)session.getAttribute("id");
    Connection con = DbConnection.getConnection(); 
	  Statement stmt=con.createStatement();
      ResultSet rs;
      ResultSetMetaData rmd;
	 
      	
	   String s11="select *  from pslip where id="+"'"+eid+"'";
	
     rs = stmt.executeQuery(s11);
      

      
        out.println("<table border=0 align=center width=80%  id=customers ><tr>");
        

        String id="",nm="",wd="",wdays="",sal="",hra="",da="",netsal="",ded="",tkh="",m="",ye="";
		            out.println("<tr>");
        while (rs.next())
        {

            
                   
                    
			        	         id=rs.getString("id");
								  nm=rs.getString("name");
			        	         wd=rs.getString("wrkingdays");
								  wdays=rs.getString("wrkeddays");
			        	         sal=rs.getString("sal");
								  hra=rs.getString("hra");
			        	         da=rs.getString("da");
								  netsal=rs.getString("netsal");
			        	         ded=rs.getString("dedns");
								  tkh=rs.getString("takhome");
			        	         m=rs.getString("month");
								  ye=rs.getString("year");
			                         
					                 out.println("<tr><td>Employee Id </td><td><b>"+id+"</b></td>");
 					                 out.println("<tr><td>Name </td><td><b>"+nm+"</b></td>");
					                 out.println("<tr><td>Working Days</td><td><b>"+wd+"</b></td>");
 					                 out.println("<tr><td>Worked Days</td><td><b>"+wdays+"</b></td>");
					                 out.println("<tr><td>Basic Salary</td><td><b>"+sal+"</b></td>");
 					                 out.println("<tr><td>HRA</td><td><b>"+hra+"</b></td>");
					                 out.println("<tr><td>DA </td><td><b>"+da+"</b></td>");
 					                 out.println("<tr><td>Deductions</td><td><b>"+ded+"</b></td>");
					                 out.println("<tr><td>Net Salary</td><td><b>"+netsal+"</b></td>");
					                 out.println("<tr><td>Take Home</td><td><b>"+tkh+"</b></td>");
					                 out.println("<tr><td>Month</td><td><b>"+m+"</b></td>");
					                 out.println("<tr><td>Year</td><td><b>"+ye+"</b></td>");									 									 									 
					  


                
           } 
            
                
            
          out.println("</tr>");

		out.println("</table><br></body></html>");
        rs.close();
		stmt.close();
		con.close();
		
    
}
  catch(Exception e)
    {
        
      out.println(e);
    }
%>
    </span></p>
    <p>&nbsp;</p>
  </div>
</div>
</body>
</html>
		