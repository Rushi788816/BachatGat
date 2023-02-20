<?php

$bgnum = $_POST["txtbgnum"];
echo $bgnum;

	define("DB_HOST", "localhost");
    define("DB_USER", "root");
    define("DB_PASSWORD", "");
    define("DB_DATABASE", "jansevadb");

    
	$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);// Make sure we connected successfully

	if(! $conn)
	{
    	die('Connection Failed'.mysql_error());
	}
	$sql = "SELECT m_id,fname,lname FROM member_info where bg_id = $bgnum";
	$result = $conn->query($sql);
	if($result->num_rows > 0)
	{
		echo "Rows found";
		echo "<table>
		<thead><th>Member ID</th><th>First Name</th><th>Last Name</th><th>Account Details</th></thead>";
		while($row = $result->fetch_assoc())
		{
		$mid = $row['m_id'];
		$fname = $row['fname'];
		$lname = $row['lname'];
		$link = "<a href="."Accountdetailsform.html".">Acc_details</a>";
		echo "<tr><td>$mid</td><td>$fname</td><td>$lname</td><td>$link</td></tr>";
	
		}
		echo "</table>";
	}
	else
	{
		echo "No rows found";
	}


?>