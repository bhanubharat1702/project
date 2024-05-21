<%@page import="Emailpackage.DbConnection"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>


<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Reimbursement</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="style.css" rel="stylesheet" type="text/css" />
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
			<form name="form1" method="post" action="">
              <p>&nbsp;</p>
              <table border='1px'>
                <tr>
                  <td colspan="2">Reembursement Type 
                    <select name="select">
                      <option value="Medical">Medical</option>
                      <option value="LTC">LTC</option>
                    </select>                  </td>
                  
                <tr>
                  <td>Employee Id</td>
         <td><input type="text" name="textfield5" id="textfield2" value="<%String s=(String) session.getAttribute("id"); out.println(s); %>" readonly=""></td>
                <tr>
                  <td>Employee Name</td>
       <td><input type="text" name="textfield2" value="<%String nm=(String) session.getAttribute("name"); out.println(nm); %>"></td>
                </tr>
                <tr>
                  <td >ReqID</td>
                  <td ><label>
                    <input type="text" name="textfield4" id="textfield4" value="<%@page import ="java.sql.*"%>
<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%try
{
   Connection con= DbConnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
	     rs=stmt.executeQuery("select * from reimburse");
	      int count=1;
      while(rs.next())
      {
			count++;
				  
		}
		
		String ss="";
		ss="R-"+s.valueOf(count);
  		out.println(ss.trim());
		  }

 catch(Exception e)
    {
     
     out.println("Exception occured" +e);
    }%>"  readonly=""/>
                  </label></td>
                </tr>
                <tr>
                  <td>Reqdate</td>
                  <td><span class="style6">
                    <label></label>
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

				   %>" readonly=""/>
                  </span></td>
                </tr>
                <tr>
                  <td>Email Id or Mobile No </td>
    <td><input type="text" name="textfield32" value="<%String m=(String) session.getAttribute("email"); out.println(m); %>" /></td>
                </tr>
                <tr>
                  <td>Billphoto</td>
                  <td><span class="style6">
                    <label></label>
                    <input name="textfield6" type="file" id="textfield6" required="required"/>
                  </span></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><label>
                    <input type="submit" name="Submit" value="Submit" />
                    <input type="reset" name="Submit2" value="Reset" />
                  </label></td>
                </tr>
              </table>
              <p>&nbsp;</p>
			</form>
			
			
			  <%
   try
  {
  
  
  	if(request.getParameter("Submit")!= null)
	{

       Connection con= DbConnection.getConnection(); 
		 Statement stmt=con.createStatement();

       	 String t0=request.getParameter("select").trim();
       	 String t1=request.getParameter("textfield5").trim();
		 String t2=request.getParameter("textfield2").trim();
		 String t3=request.getParameter("textfield4").trim();
		 String t4=request.getParameter("textfield3").trim();
 		 String t5=request.getParameter("textfield32").trim();
	     String t6=request.getParameter("textfield6").trim();
      
	  
               PreparedStatement pstmt=con.prepareStatement("insert into reimburse values(?,?,?,?,?,?,?,?)");   
					
        	pstmt.setString(1,t0);
            pstmt.setString(2,t1);
            pstmt.setString(3,t2);
            pstmt.setString(4,t3);
            pstmt.setString(5,t4);
            pstmt.setString(6,t5);
           pstmt.setString(7,t6);
		   pstmt.setString(8,"Pending");
           
           
   
            pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("<h1 align=center><b style='color:#000'>Applied successfully</b></h1>");

		 
	
		}
    }
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	
%>
			<p align="center" class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
	  </div>
	</div>
	
</div>
</body>
</html>

			