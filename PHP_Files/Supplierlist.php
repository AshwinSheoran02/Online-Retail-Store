<?php

// session_start();

// 	include("connection.php");
// 	include("functions.php"); 
include("empnavbar.php");
  

  $user_data = check_login($cone);
  $userphone= $user_data['PhoneNumber'] ;
  $q1 = "call VIEWALLSUPP();";
  $lst = $cone->query($q1);


  

  ?>

  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
  </head>
  <body>

  <h2>Our Suppliers</h2>
<?php
while($supplier = mysqli_fetch_assoc($lst)):
 //$stock =   $supplier['Stock']; 
 //echo $stock;
?>
<div class="card"  style="width: 22rem;">
  <h4><?php $supplier['Supplier_Name'] ; ?> </h4>
  <div class="card-body">
  <h5  class="card-title" > <?= $supplier['Supplier_Name']; ?> </h5>
  <p class="card-text">Supplier ID :  <?= $supplier['Supplier_ID']; ?> </p>
  <p class="card-text">Address <?= $supplier['Office_No'];  ?> </p>
  <p class="card-text">Address <?= $supplier['Building'];  ?> </p>
  <p class="card-text">Address <?= $supplier['Area'];  ?> </p>
  <p class="card-text">Address <?= $supplier['State'];  ?> </p>
  <p class="card-text">Address <?= $supplier['Pin'];  ?> </p>



</div>
  <?php endwhile; ?>



    
  </body>
  </html>

