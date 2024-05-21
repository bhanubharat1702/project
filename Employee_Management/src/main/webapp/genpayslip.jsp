<%@page import="Emailpackage.DbConnection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>GenPay Slip</title>
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
					<li><a href="adminhomepage.jsp">Back</a></li>
					<li class="first"><a href="regemployee.jsp" id="main-menu1" accesskey="1" title="">Register Employee </a></li>
					<li><a href="queryemployee.jsp" id="main-menu2" accesskey="2" title="">Query Employee </a></li>
					<li><a href="queryleavemaster.jsp" id="main-menu3" accesskey="3" title="">Query Leave Master </a></li>
					<li><a href="genpayslip.jsp" id="main-menu4" accesskey="4" title="">Generate Pay Slip </a></li>
					<li><a href="addapprove.jsp" id="main-menu4" accesskey="4" title=""> Approve Bills </a></li>
					<li><a href="approveleaves.jsp" id="main-menu5" accesskey="5" title="">Approve Leaves</a></li>
					
			</ul>
		</div>
		
		<div id="right">
			<h2 class="bigger">&nbsp;</h2>
			<form id="form1" name="form1" method="post" action="">
			  <table class="table1" >
                <tr>
                  <td width="auto" class="size">Generate Pay Slip for Employee ID </td>
                  <td ><select name="select1" id="select1" style="width:100%">
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
                  </select></td>
                </tr>
                <tr>
                  <td class="size">No of Worked Days </td>
                  <td><input name="textfield2" type="text" id="textfield2" value="0" maxlength="2" required="required" /></td>
                </tr>
                <tr>
                  <td class="size">Deductions</td>
                  <td><input name="textfield3" type="text" id="textfield3" value="0" required="required" /></td>
                </tr>
                <tr></tr>
              </table>
              <div id="center">
              <p>&nbsp;</p>
		    	<button type="submit" name="button" id="button" value="Submit">Submit</button>
		    	<button type="reset" name="button2" id="button" value="reset">Reset</button>
		    	</div>
          </form>
		  
			<div align="center"><span class="bigger">
			<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
		    <%
   try
  {
  
    	if(request.getParameter("button")!= null)
	{

       Connection con = DbConnection.getConnection(); 
		 Statement stmt=con.createStatement();
		 
       	 String t1=request.getParameter("select1").trim();
		 String t2=request.getParameter("textfield2").trim();
		 String t3=request.getParameter("textfield3").trim();
       
		////////////////////
		   Statement st=con.createStatement();
   ResultSet rs;
	  String sql="select name,sal from  emp where id="+"'"+t1+"'";


	  rs=st.executeQuery(sql);
	  String mname="",msal="";
	  while(rs.next())
	  {
	  	     mname=rs.getString("name").trim();
	     msal=rs.getString("sal").trim();

	
	  }


//out.println(msal);
		
		double ded=Float.parseFloat(t3);
	
double mmsal=Float.parseFloat(msal);
double hra=Float.parseFloat(msal)*.25f;
double da=Float.parseFloat(msal)*.5f;
double netsal=mmsal+hra+da;
double takehome=netsal-ded;
 msal=msal.valueOf(mmsal);
String mhra="";
mhra=mhra.valueOf(hra);
String mda="";
mda=mda.valueOf(da);
String mnetsal="";
mnetsal=mnetsal.valueOf(netsal);
String mtak="";
mtak=mtak.valueOf(takehome);
////////////////////////////
 	Calendar  calendar = null;
	    calendar = Calendar.getInstance();
	    java.util.Date trialTime = new java.util.Date();
	    calendar.setTime(trialTime);	


	    int year = calendar.get(Calendar.YEAR);
	    int  month =  calendar.get(Calendar.MONTH);
	    

		///////////////////
		String myear="";
		myear=myear.valueOf(year);
			String mmonth="";
			mmonth=mmonth.valueOf(month);


        PreparedStatement pstmt=con.prepareStatement("insert into pslip values(?,?,?,?,?,?,?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,mname);
            pstmt.setString(3,"30");
            pstmt.setString(4,t3);
            pstmt.setString(5,msal);
           
        	pstmt.setString(6,mhra);
            pstmt.setString(7,mda);
            pstmt.setString(8,mnetsal);
            pstmt.setString(9,t3);
            pstmt.setString(10,mtak);
            	pstmt.setString(11,myear);
            pstmt.setString(12,mmonth);
           
           
   
            pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("<h1 align=center><b style='color:#000'>Registered successfully</b></h1>");


 
// out.println(msal);

/*
out.println(msal+"<br>");
out.println(ded+"<br>");
out.println(mmsal+"<br>");
out.println(hra+"<br>");
out.println(da+"<br>");
out.println(netsal+"<br>");
out.println(takehome+"<br>");

*/

}	
	
    }
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	
%>
		    </span>
		    
	</div>
</body>
</html>

			<!-- <center><span style="width: 100%; font-family: helvetica; font-size: 6px;">
			Design downloaded from <a href="http://www.freewebtemplates.com" style="font-family: helvetica; font-size: 6px;">FreeWebTemplates.com</a><br>
			Free web design, web templates, web layouts, and website resources!
			</span></center><br><br> -->
		