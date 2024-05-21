<%@page import="Emailpackage.DbConnection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Emp Skills</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!-- <link href="default.css" rel="stylesheet" type="text/css" /> -->
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="table1.css" rel="stylesheet" type="text/css" />


<script language="jscript">

function DateCompare ()
{
var x = document.forms["form1"]["textfield"].value;
var y = document.forms["form1"]["textfield42"].value;

	if (Date.parse(x) > Date.parse(y)) {
alert("Invalid Date Range!\nStart Date cannot be after End Date!")
return false;
}

}


</script >
 <script language="javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.js"></script>
    <script language="javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular-animate.js"></script>
    <script language="javascript" src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.14.3.js"></script>
</script>
     <script language="javascript">
        angular.module('myApp', ['ngAnimate', 'ui.bootstrap']);
        angular.module('myApp').controller('myCntrl', function ($scope) {
            $scope.today = function () {
                $scope.dt = new Date();
            };
   $scope.dateformat="MM/dd/yyyy";
            $scope.today();
   $scope.showcalendar = function ($event) {
                $scope.showdp = true;
            };
   $scope.showdp = false;  
   $scope.dtmax = new Date();
        });
    </script>
	
	<link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="Stylesheet"
        type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script language="javascript">
        $(document).ready(function () {
            $("#txtdate").datepicker({
                minDate: 0
            });
        });
    </script>
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
		<div id="center">
			<h2>New Employee Registration</h2>
	  </div>
	  <br>
	  <br>
		<div id="right">
			<h2 class="bigger">&nbsp;</h2>
			
			<form id="form1" name="form1" method="post">
			  <table  class="table1">
                <tr>
                  <td class="size"><span class="style4">ID</span></td>
                  <td ><label>
                  <input type="text" name="textfield" value="<% 
		  try
{

	   Connection con = DbConnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs;

		   int count=0;

			 rs=stmt.executeQuery("select * from emp");

      int found=0;
      while(rs.next())
      {
			count++;
		}
		count=count+1001;
		String ss="";
		ss=ss.valueOf(count);
		out.println(ss);
		rs.close();
}

 catch(Exception e)
    {
     
    out.println("Exception occured" +e);
    }
%>">
                  </label></td>
                </tr>
                <tr>
                  <td class="size"><span >Name</span></td>
                  <td><input type="text" name="textfield2" required pattern="[A-Za-z]+" title="letters only" /></td>
                </tr>
                <tr>
                  <td class="size"><span >Address</span></td>
                  <td><label>
                  <input type="text" name="textarea">
                    <!-- <textarea name="textarea"></textarea> -->
                  </label></td>
                </tr>
                <tr>
                  <td class="size"><span >Phone Number </span></td>
                  <td><input name="textfield3"required="required" maxlength="10"    pattern="^\d{10}$" title="only nos should be 10 digits"/></td>
                </tr>
                <tr>
                  <td class="size"><span >Email </span></td>
                  <td><input name="textfield4" type="email" id="textfield4"required="required" /></td>
                </tr>
                <tr>
                  <td class="size"><span > Department </span></td>
                  <td><label>
                    <select name="select" style="width:100%">
                      <option value="Administrator">Administrator</option>
                      <option value="Accounts">Accounts</option>
                      <option value="Production">Production</option>
                      <option value="Marketing">Marketing</option>
                    </select>
                  </label></td>
                </tr>
                <tr>
                  <td class="size"><span >Designation</span></td>
                  <td><label>
                    <select name="select2" style="width:100%">
                      <option value="Accountant">Accountant</option>
                      <option value="Auditor">Auditor-CA</option>
                      <option value="Account Supervisor">Account Supervisor</option>
                      <option value="Marketing Director">Marketing Director</option>
                      <option value="Marketing Consultant">Marketing Consultant</option>
                      <option value="Marketing Analyst">Marketing Analyst</option>
                      <option value="Chief Manufacturing Officer">Chief Manufacturing Officer</option>
                      <option value="Chief Operation Officer">Chief Operation Officer</option>
                    </select>
                  </label></td>
                </tr>
                <tr>
                  <td class="size"><span >Salary</span></td>
                  <td><label>
                    <input name="textfield5" type="text" id="textfield5"  required/>
                  </label></td>
                </tr>
                <tr>
                  <td class="size"><span >Date of Birth </span></td>
                  <td><span class="style6">
                    <label></label>
                     <div ng-app="myApp" ng-controller="myCntrl">
          <input name="textfield6" type="date" id="t4" uib-datepicker-popup="{{dateformat}}" ng-model="dt" is-open="showdp" max-date="dtmax" />
          <span>
            <!-- <button type="button" class="btn btn-default" ng-click="showcalendar($event)"> <i class="glyphicon glyphicon-calendar"></i> </button> -->
          </span> </div>
                  </span></td>
                </tr>
                <tr>
                  <td class="size"><span >Date of Joining </span></td>
                  <td><span class="style6">
                    <label>   <input id="txtdate" type="date"  name="textfield7" required/ >
                  </label>
                  </span></td>
                </tr>
                <tr>
                  <td class="size"><span >Gender</span></td>
                  <td><label>
                  <select name="select3" style="width:100%">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                  </select>
                  </label></td>
                </tr>
                <tr>
                  <td class="size"><span >User name </span></td>
                  <td><input name="textfield8" type="text" id="textfield8" required/></td>
                </tr>
                <tr>
                  <td class="size"><span >Password</span></td>
                  <td><input name="textfield9" type="password" id="textfield9" required  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/></td>
                </tr>
                <tr>
                  <td class="size"><span >Photo</span></td>
                  <td><input style="background-color:#fff"type="file" name="textfield10" required="required" id="textfield10"/></td>
                </tr>
                <tr>
                  <td class="size">Ltc</td>
                  <td><input type="text" name="textfield11" required="required" id="textfield11"/></td>
                </tr>
                <tr>
                  <td class="size">Medical</td>
                  <td><input type="text" name="textfield12" required="required" id="textfield12"/></td>
                </tr>
                <tr>
                  <td class="size">Adhar No </td>
                  <td><input name="textfield13" type="text" id="textfield13" maxlength="12" required="required"/></td>
                </tr>
                <tr>
                  <td class="size">Bank AC no </td>
                  <td><input name="textfield14" type="text" id="textfield14" maxlength="13" required="required"/></td>
                </tr>
                <tr>
                  <td class="size">IFSC Code </td>
                  <td><input type="text" name="textfield15" required="required" id="textfield15"/></td>
                </tr>
                <tr>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td></td>
                </tr>
              </table>
              <p>&nbsp;</p>
              <div id="center">
              <button type="submit" name="button" id="button" value="Submit">Submit</button>
		    <button type="reset" name="button2" id="button" value="reset">Reset</button>
          </form>
          
          <br>
			<p>
			  <%
			
//				if(request.getParameter("Submit")!= null)
	//{

   try
  {
       Connection con=DbConnection.getConnection(); 
		 Statement stmt=con.createStatement();
		 
       	 String t1=request.getParameter("textfield").trim();
		 String t2=request.getParameter("textfield2").trim();
		 String t3=request.getParameter("textarea").trim();
		 String t4=request.getParameter("textfield3").trim();
	     String t5=request.getParameter("textfield4").trim();
         String t6=request.getParameter("select").trim();
         String t7=request.getParameter("select2").trim();
         String t8=request.getParameter("textfield5").trim();
		 String t9=request.getParameter("textfield6").trim();
		 String t10=request.getParameter("textfield7").trim();
		 String t11=request.getParameter("select3").trim();
		 String t12=request.getParameter("textfield8").trim();
		 String t13=request.getParameter("textfield9").trim();
		 String t14=request.getParameter("textfield10").trim();
		 String t15=request.getParameter("textfield11").trim();
	 	 String t16=request.getParameter("textfield12").trim();
		 String t17=request.getParameter("textfield13").trim();
		 String t18=request.getParameter("textfield14").trim();
		 String t19=request.getParameter("textfield15").trim();
		
		

       
      int count=0;
	        ResultSet rs,rs1;
			 rs=stmt.executeQuery("select * from emp where email="+"'"+t5+"'");

      int found=0;
      while(rs.next())
      {
			count++;
		}

				  
	  
	
	  if(count==0)
	  {
        PreparedStatement pstmt=con.prepareStatement("insert into emp values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");   

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
			pstmt.setString(11,t11);
			pstmt.setString(12,t12);
			pstmt.setString(13,t13);
			pstmt.setString(14,t14);
			pstmt.setString(15,t15);
			pstmt.setString(16,t16);
			pstmt.setString(17,t17);
			pstmt.setString(18,t18);
			pstmt.setString(19,t19);

           
           
   
            pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
			
	        PreparedStatement pstmt1=con.prepareStatement("insert into lmaster values(?,?,?,?,?,?,?)");   

        	pstmt1.setString(1,t1);
            pstmt1.setString(2,"20");
            pstmt1.setString(3,"0");
            pstmt1.setString(4,"5");
            pstmt1.setString(5,"5");
            pstmt1.setString(6,"5");
            pstmt1.setString(7,"5");
									
           
           
   
            pstmt1.executeUpdate(); 
                    
            
            pstmt1.close();  

            con.close(); 
			
			
			
			out.println("<h1 align=center><b style='color:#000'>Registered successfully</b></h1>");

		 }
	
	else
		{
		
				out.println("<h1 align=center ><b style='color:#000'>User already Registered </b></h1>");

		
		}
		
    }
    catch(Exception e)
    {
      //out.println("Exception occrued : "+e );
    }
	//}
%>
		    &nbsp;</p>
	  </div>
	</div>
	<br>
	
</div>
</body>
</html>
		