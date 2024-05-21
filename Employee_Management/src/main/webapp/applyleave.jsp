<%@page import="Emailpackage.DbConnection"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Apply Leave</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!-- <link href="default.css" rel="stylesheet" type="text/css" /> -->
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="table1.css" rel="stylesheet" type="text/css" />
<!-- <style type="text/css">

	/* @import url("layout.css"); */

</style> -->
<script language="jscript">

function DateCompare ()
{

alert( document.forms["form1"]["textfield2"].value);
alert( document.forms["form1"]["textfield4"].value);

//var y = document.forms["form1"]["textfield2"].value;

var x = document.forms["form1"]["textfield2"].value;
var y = document.forms["form1"]["textfield4"].value;



	if (Date.parse(x) > Date.parse(y)) 
	{
alert("Invalid Date ")
return false;
}
else
{
alert("test");
}

}


</script >
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
			<h2>Welcome Employee</h2>
<p><b>&nbsp;</b></p>

	  </div>
		<div id="right">
			<h2 class="bigger">&nbsp;</h2>
		  <form id="form1" name="form1" method="post" action="" onSubmit="return DateCompare();">
              <table align="center">
                <tr>
                  <td class="size">ID</td>
                  <td ><label>
                  <input type="text" name="textfield" readonly value="<%String s=(String) session.getAttribute("id"); out.println(s); %>">
                  </label></td>
                </tr>
                <tr>
                  <td class="size">Current Date/Applied on</td>
                  <td><label>
                  <input name="textfield2" type="text" id="textfield2" value = "<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%
                  
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

				   %>" readonly>
                  </label></td>
                </tr>
<tr>
                  <td class="size">leave from</td>
                  <td><label>
                    <input name="textfield3" type="date" id="textfield3" />
                  </label></td>
                </tr>
                <tr>
                  <td class="size">leave Upto</td>
                  <td><label>
                  <input name="textfield4" type="date" id="textfield4" />
                  </label></td>
                </tr>
                <tr>
                  <td class="size">Nod</td>
                  <td><select name="select" style="width:100%">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                  </select>                  </td>
                </tr>
                <tr>
                  <td class="size">Tleave</td>
                  <td><select name="select2" style="width:100%">
                    <option value="EL">EL</option>
                    <option value="ML">ML</option>
                    <option value="PL">PL</option>
                    <option value="CL">CL</option>
                  </select></td>
                </tr>
                <tr>
                 <td colspan="2"><input type="submit" name="Submit" value="Submit" />
                  <input type="reset" name="Submit2" value="Reset" /> </td>
                </tr>
            </table>
            <p>&nbsp;</p>
            <!-- <button  type="submit" name="button" id="button" value="Submit">Submit</button>
		    <button type="reset" name="button2" id="button" value="reset">Reset</button> -->
              <label></label>
              
              <p>&nbsp;</p>
          </form>
			<p class="bigger">&nbsp;</p>
			<p align="center" class="bigger">
			  <%
   try
  {
  
  
  	if(request.getParameter("Submit")!= null)
	{

       Connection con=DbConnection.getConnection(); 
		 Statement stmt=con.createStatement();
		 
	
       	 String t1=request.getParameter("textfield").trim();
		 String t2=request.getParameter("textfield2").trim();
		  String t3=request.getParameter("textfield3").trim();
		 String t4=request.getParameter("textfield4").trim();
		 String t5=request.getParameter("select").trim();
		 String t6=request.getParameter("select2").trim();

      
	  PreparedStatement pstmt1=con.prepareStatement("delete from  lapp where id=?");   
        	pstmt1.setString(1,t1);
           
           
   
            pstmt1.executeUpdate(); 
                    
            
            pstmt1.close();  
        

       
        PreparedStatement pstmt=con.prepareStatement("insert into lapp values(?,?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
			 pstmt.setString(5,t5);
            pstmt.setString(6,t6);
            pstmt.setString(7,"Pending");
           
           
   
            pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("<h1 align=center><b style='color:#000'>Apply Leave success</b></h1>");

		 
	
		}
    }
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	
%>
			</p>
		</div>
	</div>
	
</div>
</body>
</html>