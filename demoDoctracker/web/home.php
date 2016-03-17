<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
	header("Location: index.php");
}
$res=mysql_query("SELECT * FROM users WHERE user_id=".$_SESSION['user']);
$userRow=mysql_fetch_array($res);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome - <?php echo $userRow['user_email']; ?></title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
<div id="header">
	<div id="left">
    <label>IoT testbed Document Tracker</label>
    </div>
    <div id="right">

    	<div id="content">
        	<a href="view.php">View List</a>&nbsp;&nbsp;&nbsp;&nbsp;hi' <?php echo $userRow['user_name']; ?>&nbsp;<a href="logout.php?logout">Sign Out</a>
        </div>
    </div>
</div>

<div id="body">
	Upload the file &nbsp;<a href="file.php">Upload</a>
</div>

</body>
</html>