<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
	$uname=$_COOKIE['eid'];
	
	
	$op=$_POST["textfield"];
$np=$_POST["textfield2"];
$cp=$_POST["textfield3"];

/////////////////
$mysqli= new mysqli("localhost", "root", "", "hrms");

if ($mysqli->connect_errno) 
{
	echo "Failed to connect to MySQL: (". $db->connect_errno . ") " . $db->connect_error;
}

$sql="select * from  emp where id ='{$uname}' and  p= '{$op}'";
//echo $sql;
$found=0;
$result=$mysqli->query($sql);


if($result ->num_rows == 1)
{	
	$found=1;
}





////////////////////
if($np==$cp  && $found==1)
{


	$con = mysqli_connect("localhost", "root", "");
	mysqli_select_db($con,"hrms");

$query="update emp set p='{$np}'  where id='{$uname}'";

//echo $query;

mysqli_query($con,$query);

	
	
			echo("Password  Updated Successfully" ."<h1>");
			
						
			echo("<h4 align=center><a href=emphomepage.jsp><br>Home Page</a></h4>");
			



	
}

else
{
	echo "<h1 align=center> Some thing Wrong Please try again </h1>";
}





?>