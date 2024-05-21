<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
$user=$_POST['select'];
$txt=$_POST['textfield'];
$pass=rp(strlen($txt));



///////////////////

$mysqli= new mysqli("localhost", "root", "", "background");

if ($mysqli->connect_errno) 
{
	echo "Failed to connect to MySQL: (". $db->connect_errno . ") " . $db->connect_error;
}
if($user=="Admin")
{
$sql="select * from  adminlogin where USERNAME =  '{$txt}' ";
}
else if($user=="Candidate")
{
$sql="select * from  candidatesignup where EMAIL ='{$txt}' ";
}
else if($user=="Employee")
{
$sql="select * from  emplogin where USERNAME ='{$txt}' ";
}

$found=0;
$result=$mysqli->query($sql);


if($result ->num_rows == 1)
{	
	$found=1;
}




////////////////////
if( $found==1)
{


	$con = mysqli_connect("localhost", "root", "");
	mysqli_select_db($con,"background");

if($user=="Admin")
{
$query="update adminlogin set PASSWORD='{$pass}'  where USERNAME='{$txt}'";
}
else if($user=="Candidate")
{
$query="update Candidatesignup set PASSWORD='{$pass}'  where EMAIL='{$txt}'";
}
else if($user=="Employee")
{
$query="update emplogin set PASSWORD='{$pass}'  where USERNAME='{$txt}'";
}

//echo $query;

mysqli_query($con,$query);

	
	

			echo "<h3 align=center>Your new Password generated successuflly ..".$pass."</h3>";
			
			
			echo("<h4 align=center><a href=adminhomepage.jsp><br>Home Page</a></h4>");
			



	
}

else
{
	echo "<h1 align=center> Something Wrong Please try again </h1>";
	echo("<h4 align=center><a href=homepage.jsp><br>Home Page</a></h4>");
}









?>