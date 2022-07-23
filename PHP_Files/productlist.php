<?php

// session_start();

// 	include("connection.php");
// 	include("functions.php"); 
include("empnavbar.php");
  

  $user_data = check_login($cone);
  $userphone= $user_data['PhoneNumber'] ;
  $q1 = "call VIEWALLPROD();";
  $lst = $cone->query($q1);


  

  ?>

  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <style>
  .grid-container {
  display: grid;
  grid-template-columns: auto auto auto auto;
  row-gap: 10px;
}

  </style>

  </head>
  <body>

  <h2>Products</h2>
  <div class="grid-container" >

<?php
while($product = mysqli_fetch_assoc($lst)):
 $stock =   $product['Stock']; 
 //echo $stock;
?>
<div class="card"  style="width: 18rem;">
  <h4><?php $product['Name'] ; ?> </h4>
  <img  src = " <?= $product['image'] ; ?> " alt="<?= $product['Name']; ?>  " height = "105" width="100" />
  <div class="card-body">
  <h5  class="card-title" > <?= $product['Name']; ?> </h5>
  <p class="card-text">Product ID :  <?= $product['Product_ID']; ?> </p>
  <p class="card-text">Rs <?= $product['Price']; ?> </p>
</div>
  <?php endwhile; ?>

</div>

    
  </body>
  </html>

