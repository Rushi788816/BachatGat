<?php

$name = $_POST["txtusrname"];
$pass = $_POST["txtpassword"];
$npass = $_POST["txtnewpassword"];
$cpass = $_POST["txtconfirmpassword"];
$m_id = 0;


$flag = 0;

echo $name;
echo $pass;


	define("DB_HOST", "localhost");
    define("DB_USER", "root");
    define("DB_PASSWORD", "");
    define("DB_DATABASE", "jansevadb");

    
	$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);// Make sure we connected successfully

	if(! $conn)
	{
    	die('Connection Failed'.mysql_error());
	}
	$sql = "SELECT * FROM login";
	$result = $conn->query($sql);
	
	if($result->num_rows > 0)
	{
		echo "Rows Found";
		while($row = $result->fetch_assoc())
		{
			/*
			echo $row["username"]."<br>";
			echo $row["password"]. "<br>";
			*/
			
			if($row["username"] == $name and $row["password"] == $pass)
			{
				echo "Username and Password is correct "."<br>";
				$mid = $row["m_id"];
				if($npass == $cpass)
				{
					echo "Entered new and old passwords are same."."<br>";
					$sql = "UPDATE login SET password = '$cpass' WHERE m_id = '$mid'";

					if ($conn->query($sql) === TRUE)
					{
    					echo "Record updated successfully";
					} 
					else 
					{
    					echo "Error updating record: " . $conn->error;
					}
				}//end of new and old
				else
				{
					echo "Entered new and old passwords are not same."."<br>";
				}
				
				$flag = 1;
				break;
			}
			
		}//end of while
		if($flag == 0)
			{
				echo "Invalid username and password"."<br>";
			}//end of flag
	
	}
	else
	{
		echo "Rows Not Found";
	}
//$conn->close();
?>