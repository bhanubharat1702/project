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
	  <div id="right">
			<h2 class="bigger">&nbsp;</h2>
			<p align="center" class="bigger">
			  <%@page import ="java.sql.*"%>
              <%@page import="java.util.*,java.io.*,java.text.*"%>
              <%   
                                          
try
{
  
    Connection con = DbConnection.getConnection(); 
	  Statement stmt=con.createStatement();
      ResultSet rs;
      ResultSetMetaData rmd;
	 
      	 String ids=(String) session.getAttribute("id");
	   String s1="select id as EmpID,tleaves as Total_Leaves,lavailed as Leaves_Availed,el as EL,ml as ML,cl as CL,pl as PL from lmaster where id=  "+"'"+ids+"'";
	
     rs = stmt.executeQuery(s1);
      

      
        out.println("<table border=0 align=center width=20%  id=customers ><tr>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n+1;i++)
        {
            
            
		    if(i<=n)
            out.println("<td><b><font size=5>"+rmd.getColumnName(i)+"</font></b></td>");
			
        }
        String s="",s5="";
        while (rs.next())
        {
            out.println("<tr>");
            
                for(int x=1;x<=n;x++)
                {
                   
                    
        	         s=rs.getString(x);
                                            
										                 out.println("<td><b>"+s+"</b></td>");

					 
					  
                 }   
                    // out.println("<td><b><a href=addtocart.jsp?d="+s5+"&c=tables>Add to cart</b><a/></td>");
                
            
            
                
            
          out.println("</tr>");
        }
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
</p>
			<p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
	  </div>
	</div>
</div>
</body>
</html>

			
		