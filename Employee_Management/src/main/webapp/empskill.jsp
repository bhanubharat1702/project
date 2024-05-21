<%@page import="Emailpackage.DbConnection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Emp Skills</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="style.css" rel="stylesheet" type="text/css" />
	<link href="table1.css" rel="stylesheet" type="text/css" />
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
		<div id="center">
			<h2 align="center" class="bigger">Register Employee Skill Details </h2>
			<div align="center">
			  <form id="form1" name="form1" method="post" action="">
                <p>&nbsp;</p>
                <table class="table1" >
                  <tr>
                    <td class="size">ID</td>
                    <td><label>
                    <select name="select1" id="select1" style="width:100%">
                      <%@page import ="java.sql.*"%>
                      <%
		
		 try
{
	 Connection con= DbConnection.getConnection(); 




	 
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
                    <td class="size" >Comp Name </td>
                    <td><input type="text" name="textfield2" /></td>
                  </tr>
                  <tr>
                    <td class="size">Phone Number </td>
                    <td><input type="number" name="textfield3" /></td>
                  </tr>
                  <tr>
                    <td class="size">Email</td>
                    <td><input type="email" name="textfield4" /></td>
                  </tr>
                  <tr>
                    <td class="size">Address</td>
                    <td><label>
                      <input type="text">
                    </label></td>
                  </tr>
                  <tr>
                    <td class="size">Contctper</td>
                    <td><label>
                      <input type="text" name="textfield5" />
                    </label></td>
                  </tr>
                  <tr>
                    <td class="size">Designation</td>
                    <td><input type="text" name="textfield6" /></td>
                  </tr>
                  <tr>
                    <td class="size">Prevpaypackg</td>
                    <td><input type="text" name="textfield7" /></td>
                  </tr>
                  <tr>
                    <td class="size">Fromdt</td>
                    <td><label>
                      <input name="textfield8" type="date" id="textfield8" />
                    </label></td>
                  </tr>
                  <tr>
                    <td class="size">Todt</td>
                    <td><input name="textfield9" type="date" id="textfield9" /></td>
                  </tr>
                </table>
                
               <p>&nbsp;</p>
		    <button type="submit" name="button" id="button" value="Submit">Submit</button>
		    <button type="reset" name="button2" id="button" value="reset">Reset</button>
		    <p>&nbsp;</p>
		    <p>&nbsp;</p>
			  </form>
			  <p><span class="bigger">
			    <%
   try
  {
       Connection con = DbConnection.getConnection(); 
		 Statement stmt=con.createStatement();
		 
       	 String t1=request.getParameter("select1").trim();
		 String t2=request.getParameter("textfield2").trim();
		 String t3=request.getParameter("textfield3").trim();
		 String t4=request.getParameter("textfield4").trim();
	     String t5=request.getParameter("textarea").trim();
         String t6=request.getParameter("textfield5").trim();
         String t7=request.getParameter("textfield6").trim();
         String t8=request.getParameter("textfield7").trim();
		 String t9=request.getParameter("textfield8").trim();
		 String t10=request.getParameter("textfield9").trim();
		 
       	  
        PreparedStatement pstmt=con.prepareStatement("insert into empskll values(?,?,?,?,?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
            pstmt.setString(6,t6);
			pstmt.setString(7,t7);
            pstmt.setString(8,t8);
            pstmt.setString(9,t9);
            pstmt.setString(10,t10);
       
           
   
            pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("<h1 align=center><b style='color:#000'>Registered successfully</b></h1>");

    }
    catch(Exception e)
    {
      out.println(/* "Exception occured" +e */);
    }
	
%>
			  </span></p>
			 
		    </div>
	  		</div>
		</div>
	</body>
</html>