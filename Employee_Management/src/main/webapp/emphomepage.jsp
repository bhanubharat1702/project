<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>


<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>User Dashboard</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="wrapper">
	<div id="main-menu">
		<ul>
			<li><a href="index.jsp" id="logo1"><h1>BSP</h1></a></li>
			<li class="first"><a href="empchpassword.jsp" id="main-menu1" accesskey="1" title="">Change Password </a></li>
			<li><a href="trackleaves.jsp" id="main-menu2" accesskey="2" title="">Track Leaves </a></li>
			<li><a href="applyleave.jsp" id="main-menu3" accesskey="3" title="">Apply Leave </a></li>
			<li><a href="viewpayslip.jsp" id="main-menu4" accesskey="4" title="">View Payslip </a></li>
			<li><a href="addremembers.jsp" id="main-menu4" accesskey="4" title=""> Add Reimbursement </a></li>
			<li><a href="index.jsp" id="main-menu5" accesskey="5" title="">SignOut</a></li>
		</ul>
	</div>
	

	<div id="content">
		<div id="center">
			<h2>Welcome Employee</h2>
			<p align="center">&nbsp;</p>
		  <p>Emp Name :<b>&nbsp;
		    <% String n=(String)session.getAttribute("name"); out.println(n);  %>
		  </b></p>
		  <p class="bigger">&nbsp;</p>
			<p>Emp Photo :<br>
			 <p class="bigger">&nbsp;</p>
						

			  <b>
			  <% String ph=(String)session.getAttribute("pho"); 
			  out.println("<img src="+ph+" width=270 height=329></img>");  %>
			  </b>
			<p>&nbsp;</p>
		
		</div>
		<div id="right">
			<h2 class="bigger">&nbsp;</h2>
			
			<p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
		</div>
	</div>
</div>
</body>
</html>

			
		