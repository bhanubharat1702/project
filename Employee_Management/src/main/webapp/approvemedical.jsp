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
			
			
		<li><a href="medicalapprove.jsp" id="main-menu5" accesskey="5" title="">BACK</a></li>
		</ul>
	</div>
	<div id="content">
		<div id="left">
			<h2>Medical Approve </h2>
	  </div>
		<div id="right">
			<h2 align="center" class="bigger">&nbsp;</h2>
			<form id="form1" name="form1" method="post" action="">
			  <table width="100%">
                <caption align="top">
                  Bank Details
                </caption>
			    <tr>
			      <td>Employee Id</td>
			      <td><input type="text" name="textfield4" id="textfield4" value="<?jsp $eid=$_GET['eid']; echo $eid;  ?>"/></td>
			    </tr>
			    <tr>
                  <td>Name</td>
     <td><input type="text" name="textfield5" id="textfield5"  value="<?php $db = new mysqli("localhost", "root", "", "hrms");

if ($db->connect_errno) {
echo "Failed to connect to MySQL: (" 
. $db->connect_errno . ") " . $db->connect_error;
}


$sql="select name,bankac,ifsc from  emp where id='{$eid}'";
$result_db = $db->query($sql) or die("Error!");
$all_result = $result_db->fetch_all();

$id1="";
$id2="";
$id3="";


foreach ($all_result as $row) 
{
$id1=$row[0];
$id2=$row[1];
$id3=$row[2];

}
echo $id1;
  ?>"/></td>
		        </tr>
                <tr>
                  <td>Bank Account No</td>
                  <td><input type="text" name="textfield2" id="textfield2"  value="<?jsp echo $id2; ?>"/></td>
                </tr>
                <tr>
                  <td>IFSC Code</td>
                  <td><input type="text" name="textfield3" id="textfield3" value="<?jsp echo $id3; ?>"/></td>
                </tr>
                <tr>
                  <td>Amount</td>
                  <td><input type="text" name="textfield6" id="textfield6" /></td>
                </tr>
                <tr>
                  <td><input type="submit" name="button" id="button" value="Submit" /></td>
                  <td><input type="reset" name="button2" id="button2" value="Reset" /></td>
                </tr>
              </table>
          </form>
			<p class="bigger">&nbsp;</p>
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
		<p>Copyright &copy; 2018 All rights reserved.</p>
	</div>
</div>
</body>
</html>

			<center><span style="width: 100%; font-family: helvetica; font-size: 6px;">
			Design downloaded from <a href="http://www.freewebtemplates.com" style="font-family: helvetica; font-size: 6px;">FreeWebTemplates.com</a><br>
			Free web design, web templates, web layouts, and website resources!
			</span></center><br><br>
		