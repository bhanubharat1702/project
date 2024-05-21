<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
$mysqli= new mysqli("localhost", "root", "", "hrms");

if ($mysqli->connect_errno) 
{
	echo "Failed to connect to MySQL: (". $db->connect_errno . ") " . $db->connect_error;
}




$doa=$_POST["textfield2"];
$nod=$_POST["select"];
$ty=$_POST["select2"];


$aid=$_COOKIE["eid"];

$con = mysqli_connect("localhost", "root", "");
mysqli_select_db($con,"hrms");


////////////////////////////////////
$db = new mysqli("localhost", "root", "", "hrms");

if ($db->connect_errno) {
echo "Failed to connect to MySQL: (" 
. $db->connect_errno . ") " . $db->connect_error;
}

$sql="select * from  lmaster where id ='{$aid}'";


$result_db = $db->query($sql) or die("Error!");
$all_result = $result_db->fetch_all();

$lavl=0;
$el=0;
$ml=0;
$cl=0;
$pl=0;
foreach ($all_result as $row) 
{

$lavl=$row[2];
$el=$row[3];
$ml=$row[4];
$cl=$row[5];
$pl=$row[6];

}
$db->close();

if($ty=="EL")
{
$el=$el-$nod;
}
else if($ty=="ML")
{
$ml=$ml-$nod;
}
else if($ty=="CL")
{
$cl=$cl-$nod;
}
else if($ty=="PL")
{
$pl=$pl-$nod;
}

$lavl=$lavl+$nod;



$con = mysqli_connect("localhost", "root", "");
mysqli_select_db($con,"hrms");

$query = "update lmaster set lavailed="."'".$lavl."'".",el="."'".$el."'".",ml="."'".$ml."'".",cl="."'".$cl."'".",pl="."'".$pl."'"." where id = "."'".$aid."'";

//echo $query;

mysqli_query($con,$query);



///////////////////////////////////
$con = mysqli_connect("localhost", "root", "");
mysqli_select_db($con,"hrms");

$query = "insert into lapp values ('$aid','$doa','$nod','$ty','Pending')";

//echo $query;

mysqli_query($con,$query);



//	header('Location:bookinfoack.html');

echo "<h3 align = center>Leave Request Submitted successfully <br>";
echo "<a href=emphomepage.jsp>Home Page</a></h3>";




?>
