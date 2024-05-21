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
.style4 {font-size: 16px}
.style5 {font-size: 10}
.style6 {font-size: 14px}
-->
</style>

<script language="jscript">

function DateCompare ()
{
var x = document.forms["form1"]["textfield"].value;
var y = document.forms["form1"]["textfield42"].value;

	if (Date.parse(x) > Date.parse(y)) {
alert("Invalid Date Range!\nStart Date cannot be after End Date!")
return false;
}



</script >

</head>

<body>
<div id="wrapper">
	<div id="header">
		<h1>hrms.com</h1>
		<h2>human resource tracking portal </h2>
	</div>
	<div id="main-menu">
		<ul>
			<li class="first"><a href="adminhomepage.jsp" id="main-menu1" accesskey="1" title="">Home</a></li>
			<li></li>
			<li class="first"><a href="empedn.jsp" id="main-menu1" accesskey="1" title="">Register Employee Education Details </a></li>
			<li></li>
		    <li class="first"><a href="empskill.jsp" id="main-menu1" accesskey="1" title="">Skill Details </a></li>
		    <li></li>
		    <li class="first"><a href="empcert.jsp" id="main-menu1" accesskey="1" title="">Certification Details </a></li>
		    <li></li>
		</ul>
  </div>
	<div id="content">
		<div id="left">
			<h2>Welcome Administrator</h2>
	  </div>
		<div id="right">
			<h2 class="bigger">&nbsp;</h2>
			<form id="form1" name="form1" method="post" action="">
			  <table width="524" border="1">
                <tr>
                  <td width="144"><span class="style4">ID</span></td>
                  <td width="364"><label></label></td>
                </tr>
                <tr>
                  <td><span class="style4">Name</span></td>
                  <td><input type="text" name="textfield2" value="<?php echo $n; ?>"required/></td>
                </tr>
                <tr>
                  <td><span class="style4">Address</span></td>
                  <td><label>
                    <input name="textfield3" type="text" id="textfield3" value="<?php echo $ad; ?>">
                  </label></td>
                </tr>
                <tr>
                  <td><span class="style4">Phone Number </span></td>
                  <td><input name="textfield4" type="num" id="textfield4" maxlength="10"required="required" /></td>
                </tr>
                <tr>
                  <td><span class="style4">Email </span></td>
                  <td><input name="textfield5" type="email" id="textfield5"required="required" /></td>
                </tr>
                <tr>
                  <td><span class="style4"> Department </span></td>
                  <td><label>
                    <select name="select">
                      <option value="Administrator">Administrator</option>
                      <option value="Accounts">Accounts</option>
                      <option value="Production">Production</option>
                      <option value="Marketing">Marketing</option>
                    </select>
                  </label></td>
                </tr>
                <tr>
                  <td><span class="style4">Designation</span></td>
                  <td><label>
                    <select name="select2">
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
                  <td><span class="style4">Salary</span></td>
                  <td><label>
                    <input name="textfield1" type="text" id="textfield1"  required/>
                  </label></td>
                </tr>
                
                <tr>
                  i                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input type="submit" name="Submit" value="Submit" />
                    <input type="reset" name="Submit2" value="Reset" /></td>
                </tr>
              </table>
          </form>
		  
	      <div align="center"></div>
	      <p class="bigger">&nbsp;</p>
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
		<p>Copyright &copy; 2017-18 . All rights reserved.</a>.</p>
	</div>
</div>
</body>
</html>

			<center><span style="width: 100%; font-family: helvetica; font-size: 6px;">
			Design downloaded from <a href="http://www.freewebtemplates.com" style="font-family: helvetica; font-size: 6px;">FreeWebTemplates.com</a><br>
			Free web design, web templates, web layouts, and website resources!
			</span></center><br><br>
		