<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
/*	setcookie('eid',$$mpno);
	setcookie('na',$na);
	setcookie('sal',$sal);
	setcookie('wds',$wrkingdays);
	setcookie('wdd',$workeddays);
	setcookie('ns',$netsal);
	setcookie('ddns',$ddns);
	setcookie('tk',$takhome);
	setcookie('m',$month);
	setcookie('y',$year);
	
	
	*/	$eid=$_COOKIE['eid'];
		$na=$_COOKIE['na'];
		$sal=$_COOKIE['sal'];
		$hra=$_COOKIE['hra'];
		$da=$_COOKIE['da'];
		$wds=$_COOKIE['wds'];
		$wdd=$_COOKIE['wdd'];
		$ns=$_COOKIE['ns'];
		$ddns=$_COOKIE['ddns'];
		$tk=$_COOKIE['tk'];
		$m=$_COOKIE['m'];
		$y=$_COOKIE['y'];
		
	
	echo "<h1 align=center> Payslip for the month of ".$m." - " .$y."<br>";
	echo "<table border=5 align=center>";
	echo "<tr><td>Employee id= </td><td>".$eid."<br>"."</td>";
	echo "<tr><td>Name= </td><td>".$na."<br>"."</td>";
	echo "<tr><td>Salary </td><td>".$sal."<br>"."</td>";
	echo "<tr><td>HRA </td><td>".$hra."<br>"."</td>";
	echo "<tr><td>DA </td><td>".$da."<br>"."</td>";
	echo "<tr><td>Total Working Days= </td><td>".$wds."<br>"."</td>";
	echo "<tr><td>Total Worked Days= </td><td>".$wdd."<br>"."</td>";
	echo "<tr><td>Net Salary= </td><td>".$ns."<br>"."</td>";
	echo "<tr><td>Take Home Salary = </td><td>".$tk."<br>"."</td></table>";
	echo "<h3 align=center > Computer generated receipt ,no signature required..";
	
	
	



?>
