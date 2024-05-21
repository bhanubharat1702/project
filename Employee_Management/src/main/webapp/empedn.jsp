<%@page import="Emailpackage.DbConnection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Emp Edu Details</title>
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
			<li class="first"><a href="adminhomepage.jsp" id="main-menu1" accesskey="1" title="">Back</a></li>
			<li class="first"><a href="regemployee.jsp" id="main-menu1" accesskey="1" title="">Register New Emp</a></li>
			<li class="first"><a href="empedn.jsp" id="main-menu1" accesskey="1" title="">Register Emp Edu Details </a></li>
		    <li class="first"><a href="empskill.jsp" id="main-menu1" accesskey="1" title="">Skill Details </a></li>
		    <li class="first"><a href="empcert.jsp" id="main-menu1" accesskey="1" title="">Certification Details </a></li>
		</ul>
	</div>
	<div id="content">
		<div id="center">
			<h2   >Register Employee Education Details </h2>
			<div align="center">
			  <form id="form1" name="form1" method="post" action="">
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <table width="auto" class="table1" >
                  <tr>
                    <td class="size">ID</td>
                    <td><label>
                    <select name="select1" id="select1" style="width:100%">
                      <%@page import ="java.sql.*"%>
                      <%
		
		 try
{
	  Connection con = DbConnection.getConnection();




	 
   Statement st=con.createStatement();
   ResultSet rs;
	  String sql="select distinct(id)  from  emp ";


	  rs=st.executeQuery(sql);
	  int found=0;
	  while(rs.next())
	  {
	     String mfrom=rs.getString("id").trim();

	 
	     %>
                      <option value="<%out.println(mfrom);%>">
                      <%out.println(mfrom);%>
                      </option>
                      <%  
	  }
	  rs.close();
      }
	  catch(Exception e)
    {
      out.println("Exception occured "+e);
    }
	  %>
                    </select>
                    </label></td>
                  </tr>
                  <tr>
                    <td class="size">Education</td>
                    <td><label>
                      <select name="select" style="width:100%">
                        <option value="HSC">HSC</option>
                        <option value="PUC">PUC</option>
                        <option value="DEGREE">DEGREE</option>
                        <option value="PG">PG</option>
                      </select>
                    </label></td>
                  </tr>
                  <tr>
                    <td class="size">Year</td>
                    <td><select name="select2" style="width:100%">
                      <option value="2010">2010</option>
                      <option value="2011">2011</option>
                      <option value="2012">2012</option>
                      <option value="2013">2013</option>
                      <option value="2014">2014</option>
                      <option value="2015">2015</option>
                      <option value="2016">2016</option>
                      <option value="2017">2017</option>
                      <option value="2018">2018</option>
                      <option value="2019">2019</option>
                      <option value="1990">1990</option>
                      <option value="1991">1991</option>
                      <option value="1992">1992</option>
                      <option value="1993">1993</option>
                      <option value="1994">1994</option>
                      <option value="1995">1995</option>
                      <option value="1996">1996</option>
                      <option value="1997">1997</option>
                      <option value="1998">1998</option>
                      <option value="1999">1999</option>
                      <option value="2000">2000</option>
                      <option value="2001">2001</option>
                      <option value="2002">2002</option>
                      <option value="2003">2003</option>
                      <option value="2004">2004</option>
                      <option value="2005">2005</option>
                      <option value="2006">2006</option>
                      <option value="2007">2007</option>
                      <option value="2008">2008</option>
                      <option value="2009">2009</option>
                                                            </select></td>
                  </tr>
                  <tr>
                    <td class="size">Institute or University </td>
                    <td><label>
                      <input type="text" name="textfield2" />
                    </label></td>
                  </tr>
                  <tr>
                    <td class="size">Grade</td>
                    <td><select name="select3" style="width:100%">
                      <option value="A">A</option>
                      <option value="B">B</option>
                      <option value="C">C</option>
                    </select></td>
                  </tr>
                </table>
                <p>&nbsp;</p>
		    <button type="submit" name="button" id="button" value="Submit">Submit</button>
		    <button type="reset" name="button2" id="button" value="reset">Reset</button>
<p>&nbsp;</p>
			  </form>
			  <p>&nbsp;</p>
		  </div>
			<p align="center" class="bigger">
			  	<%
   try
  {
       Connection con=DbConnection.getConnection(); 
		 Statement stmt=con.createStatement();
		 
       	 String t1=request.getParameter("select1").trim();
		 String t2=request.getParameter("select").trim();
		 String t3=request.getParameter("select2").trim();
		 String t4=request.getParameter("textfield2").trim();
	     String t5=request.getParameter("select3").trim();
       
		

       
        PreparedStatement pstmt=con.prepareStatement("insert into empedn values(?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
           
           
   
            pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("<h1 align=center><b style='color:#000'>Registered successfully</b></h1>");

		 
	
	
    }
    catch(Exception e)
    {
      out.println("");
    }
	
%>
				</div>
			</div>
		</div>
	</body>
</html>
		
		
<!-- <li class="first"><a href="regemployee.jsp" id="main-menu1" accesskey="1" title="">Back</a></li> -->