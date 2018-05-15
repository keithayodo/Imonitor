<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['username']))
{
	header("Location: index.php");
}
$res=mysql_query("SELECT * FROM user WHERE username=".$_SESSION['username']);
//$usernameRow=mysql_fetch_array($res);




if(isset($_POST['btn-signup1']))
{
    $location = mysql_real_escape_string($_POST['location']);
    $drink = mysql_real_escape_string($_POST['drink']);
    $data = mysql_real_escape_string($_POST['data']);
    $userid = mysql_real_escape_string($_POST['userid']);
    
    $location = trim($location);
    $drink = trim($drink);
    $data = trim($data);
    $userid = trim($userid);
    
    
    $count = 0;
    
    if($count == 0){
        
        if(mysql_query("INSERT INTO collect(location, drink, data, userid) VALUES('$location','$drink','$data', 'userid')"))
        {
            ?>
            <script>alert('successfully uploaded ');</script>
            <?php
        }
        else
        {
            ?>
            <script>alert('error while uploading...');</script>
            <?php
        }       
    }
    else{
            ?>
            <script>alert('Sorry count failed to work ...');</script>
            <?php
    }
    
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>I-Monitor data collection portal</title>
<link rel="stylesheet" href="style.css" type="text/css" />

</head>
<body>
<div id="header">
    <div id="left">
    <label>I-Monitor</label>
    </div>
    <div id="right">
        <div id="content">
            hi' <?php echo $userRow['username']; ?>&nbsp;<a href="logout.php?logout">Sign Out</a>
        </div>

        
    </div>
</div>

<div id="body">
    <!-- <a href="http://www.brandspeak.co.ke/tms/upload.php">I-Monitor TMS</a><br /><br /> -->
    <p>Let Me Save your Data For you, Wherever you are!</p>
</div>
<center>
<div id="login-form">
<form method="post">
<table align="center" width="30%" border="0">
<tr>
<td><input type="text" name="location" placeholder="location" required /></td>
</tr>
<tr>
<td><input type="text" name="drink" placeholder="drink" required /></td>
</tr>

<tr>
<td><input type="number" name="data" placeholder="sales" required /></td>
</tr>
<tr>
<td><input type="number" name="userid" placeholder="userid" required /></td>
</tr>
<tr>
<td><button type="submit" name="btn-signup1">upload Data</button></td>
</tr>

</table>
</form>
</div>
</center>
<div id="header">
	<div id="left">
    <label>I-Monitor</label>
    </div>
    <div id="right">
    	<div id="content">
        	hi' <?php echo $userRow['username']; ?>&nbsp;<a href="logout.php?logout">Sign Out</a>
        </div>

        
    </div>
</div>

<div id="body">
	<!-- <a href="http://www.brandspeak.co.ke/tms/upload.php">I-Monitor TMS</a><br /><br /> 
    <p>Let Me Save your Data For you, Wherever you are!</p>-->
</div>

</body>
</html>