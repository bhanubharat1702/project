<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
$mysqli= new mysqli("localhost", "root", "", "hrms");

if ($mysqli->connect_errno) 
{
	echo "Failed to connect to MySQL: (". $db->connect_errno . ") " . $db->connect_error;
}



//$sql="select * from pigmy ";
//$result=$mysqli->query($sql);


//$cnt=$result->num_rows ;	

$n=$_POST["textfield2"];
$ad=$_POST["textarea"];
$p1=$_POST["textfield3"];
$e=$_POST["textfield4"];
$de=$_POST["select"];
$des=$_POST["select2"];
$s=$_POST["textfield43"];
$dob=$_POST["textfield"];
$doj=$_POST["textfield42"];
$g=$_POST["select3"];
$u=$_POST["textfield423"];
$p=$_POST["textfield423"];
$ph=$_POST["textfield424"];
$ltc=$_POST["textfield425"];
$med=$_POST["textfield426"];
$adh=$_POST["textfield427"];
$bankac=$_POST["textfield428"];
$ifsc=$_POST["textfield429"];






$aid=$_COOKIE["eid"];

$con = mysqli_connect("localhost", "root", "");
mysqli_select_db($con,"hrms");

$query = "insert into emp values ('$aid','$n','$ad','$p1','$e','$de','$des','$s','$dob','$doj','$g','$u','$p','$ph','$ltc','$med','$adh','$bankac','$ifsc')";

echo $query;

mysqli_query($con,$query);


$query = "insert into lmaster values ('$aid','20','0','5','5','5','5')";

//echo $query;

mysqli_query($con,$query);

//	header('Location:bookinfoack.html');
//echo "<h1 align = centre> Employee  Details</h1>";
echo "<h3 align = centre> Submitted successfully </h3>";


?>
