<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
$mysqli= new mysqli("localhost", "root", "", "hrms");

if ($mysqli->connect_errno) 
{
	echo "Failed to connect to MySQL: (". $db->connect_errno . ") " . $db->connect_error;
}

//header("http://localhost/insurance/Adminhomepage.html");


$uname=$_POST["t1"];
$pword=$_POST["t2"];
//$utype=$_POST["select"];
$sql="select u,p from  adminlogin where u ='{$uname}' and  p= '{$pword}'";
$found=0;
//$result=$mysqli->query("select  * from admin where unam=".$uname);
$result=$mysqli->query($sql);
//" and "." pwd=".$pword);

if($result ->num_rows == 1)
{	
	$found=1;
}
	if($found==1 )
	{
	
		header('Location:adminhomepage.jsp');
	}
	else
	{
		header('Location:invalidsignin.jsp');
	}




?>