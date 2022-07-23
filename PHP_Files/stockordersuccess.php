<?php

// session_start();

// 	include("connection.php");
// 	include("functions.php"); 
include("empnavbar.php");
  

  $user_data = check_login($cone);
  $userphone= $user_data['PhoneNumber'] ;

  ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Order Sucess</title>
</head>
<body>
  
<br>

<h4> Your Order was Success </h4>
<h4> Return to home using navbar </h4>
<hr>
  
</body>
</html>