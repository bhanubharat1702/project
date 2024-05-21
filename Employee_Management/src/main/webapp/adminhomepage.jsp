<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Admin Dashboard</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="main-menu">
		<ul>
				<li><a href="index.jsp" id="logo1"><h1>BSP</h1></a></li>
				<li class="first"><a href="regemployee.jsp" id="main-menu1" accesskey="1" title="">Register Employee </a></li>
				<li><a href="queryemployee.jsp" id="main-menu2" accesskey="2" title="">Query Employee </a></li>
				<li><a href="queryleavemaster.jsp" id="main-menu3" accesskey="3" title="">Query Leave Master </a></li>
				<li><a href="genpayslip.jsp" id="main-menu4" accesskey="4" title="">Generate Pay Slip </a></li>
				<li><a href="addapprove.jsp" id="main-menu4" accesskey="4" title=""> Approve Bills </a></li>
				<li><a href="approveleaves.jsp" id="main-menu5" accesskey="5" title="">Approve Leaves</a></li>
				<li><a href="index.jsp">SignOut</a></li>
		</ul>
	</div>
		
	<div id="content">
		<div id="center">
		  	<h2>Welcome Administrator</h2>
		  	<br/>
			<p>Hello Mrs.SADIA</p>
			<br/>
	  	</div>
	  	<div>
			<center><p class="bigger"><img src="images/selfi.jpg" class="reach-img"/></p></center>
			
			<p class="bigger">&nbsp;</p>
		</div>
	</div>
</body>
</html>

			