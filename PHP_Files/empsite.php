<?php

// session_start();

// 	include("connection.php");
// 	include("functions.php"); 
include("empnavbar.php");
  

  $user_data = check_login($cone);
  $userphone= $user_data['PhoneNumber'] ;
  
  $q1 = "CALL VIEWTDYRCPT();  ";
 // echo $q1;
  $lst = $cone->query($q1);
  $todaysale = 0;

while($recipt = mysqli_fetch_assoc($lst)):
 //$stock =   $supplier['Stock']; 
 //echo $stock;
 $todaysale = $todaysale + $recipt['Final_cost']; ;

endwhile;


  ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Home</title>
</head>
<body>
  
<h3> Welcome <?php echo $userphone ?> </h3>
<hr>
<h4> Select your required operation from navigation bar </h4>
<hr>

        <a class="link-primary" href="./Checkstock.php"> Check Product Stock</a>
    <hr>
        <a class="link-primary" href="./Productlist.php">Product List</a> 
      <hr>
        <a class="link-primary" href="./addstock.php">Add Stock</a>
      <hr>
        <a class="link-primary" href="./Supplierlist.php">Supplier List</a>
        <hr>
        <h4>Today's Total Sale : <?php echo  $todaysale ?></h4>
  
</body>
</html>