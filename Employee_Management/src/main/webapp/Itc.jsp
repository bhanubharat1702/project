<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Free website template from 4Templates.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!-- <link href="default.css" rel="stylesheet" type="text/css" /> -->
<link href="style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
	/* @import url("layout.css"); */
-->
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<h1>hrms.com</h1>
		<h2>human resource tracking portal </h2>
	</div>
	<div id="main-menu">
		<ul>
			
			<li><a href="medical.jsp" id="main-menu4" accesskey="4" title="">Medical  </a></li>
			<li><a href="ltc.jsp" id="main-menu4" accesskey="4" title=""> Ltc  </a></li>
			<li><a href="emphomepage.jsp" id="main-menu5" accesskey="5" title="">BACK</a></li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
			<h2>LTC</h2>
	  </div>
		<div id="right">
			<h2 class="bigger">&nbsp;</h2>
			<form id="form1" name="form1" method="post" action="">
              <table width="84%">
                <tr>
                  <td>Employee id</td>
                  <td><input type="text" name="textfield5" id="textfield2" value="<?jsp $eid=$_COOKIE['eid']; echo $eid; ?>"/></td>
                  <td width="39%" rowspan="6"><div align="center"></div></td>
<tr>
<td>Employee Name</td>
<td><input type="text" name="textfield5" name="textfield2" value="<?php $en=$_COOKIE['name']; echo $en; ?>&nbsp;"/></td></tr>

                <tr>
                  <td width="16%">ReqID</td>
                  <td width="45%"><label>
                    <input type="text" name="textfield4" id="textfield4" value="<?jsp 
		  	$mysqli= new mysqli("localhost", "root", "", "hrms");

if ($mysqli->connect_errno) 
{
	echo "Failed to connect to MySQL: (". $db->connect_errno . ") " . $db->connect_error;
}



$sql="select * from  ltc";
$result=$mysqli->query($sql);


$cnt=$result->num_rows ;
$cnt=$cnt+1001;
setcookie("lid",$cnt);
echo $cnt;
		  
		  
		  ?>" />
                  </label></td>
                </tr>
                <tr>
                  <td>Reqdate</td>
<td><span class="style6">
                    <label></label>
                    <input type="date" name="textfield2" required="required"/>
                  </span></td>
                </tr>
                <tr>
                  <td>Email Id </td>
                  <td><input type="text" name="textfield3" value="<?jsp $e=$_COOKIE['email']; echo $e; ?>"/></td>
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
		  </form>
			<p align="center" class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
		</div>
	</div>
	<div class="hr1">
		<hr />
	</div>
	<div id="footer">
		<ul>
			<li><a href="#" title="">Home</a></li>
			<li><a href="#" title="">Products</a></li>
			<li><a href="#" title="">Services</a></li>
			<li><a href="#" title="">About Us</a></li>
			<li><a href="#" title="">Contact Us</a></li>
		</ul>
		<p>Copyright &copy; 2018. All rights reserved.</p>
	</div>
</div>
</body>
</html>

			<center><span style="width: 100%; font-family: helvetica; font-size: 6px;">
			Design downloaded from <a href="http://www.freewebtemplates.com" style="font-family: helvetica; font-size: 6px;">FreeWebTemplates.com</a><br>
			Free web design, web templates, web layouts, and website resources!
			</span></center><br><br>
		