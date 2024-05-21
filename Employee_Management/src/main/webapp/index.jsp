<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Home</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="main-menu">
		<ul>
			<a href="index.jsp"><h1 id="logo">BSP</h1></a>
			<li><a href="index.jsp" id="main-menu1" accesskey="1" title="">Home </a></li>
			<li><a href="aboutus.jsp" id="main-menu1" accesskey="1" title="">About Us </a></li>
			<li><a href="reachus.jsp" id="main-menu2" accesskey="2" title="">Reach us </a></li>
			<li><a href="signin.jsp" id="main-menu4" accesskey="4" title="">LogIn (Admin) </a></li>
			<li><a href="signinemp.jsp" id="main-menu5" accesskey="5" title="">LogIn (Employees) </a></li>
		</ul>
	</div>
	
	<div id="content">
	  <div id="banner">
	  	<div id="banner-container">
	  		<div id="left">
	    		<h1>WELCOME TO BSP<br>(Bharat Sadia Project)</h1>
	    		<p>Your dedicated portal for enhancing the relationship between employees and administration. Our platform is designed to streamline communication, manage employee records, and foster a collaborative environment within the company. </p>
	    		<form action="aboutus.jsp">
	    		<button>Learn More</button>
	    		</form>
	    	</div>
	    	<div id="right">
	    		
	    		<img src="images/image-1.svg" alt="img" class="image">
	    		
	    	</div>
	    </div>
	  </div>
	</div>
</body>
	