<?php


$name = $_POST["txtusrname"];
$pass = $_POST["txtpassword"];
$flag = 0;
/*
echo $name;
echo $pass;
*/

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
		//echo "rows found". "<br>";
		while($row = $result->fetch_assoc())
		{
			/*
			echo $row["username"]."<br>";
			echo $row["password"]. "<br>";
			*/
			
			if($row["username"] == $name and $row["password"] == $pass)
			{
				echo "Username and Password is correct "."<br>";
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
		echo "rows not found";
	}



?>