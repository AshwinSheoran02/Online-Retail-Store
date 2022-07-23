<?php

session_start();

	include("connection.php");
	include("functions.php"); 
    $user_data = check_login($cone);


    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
  <a class="navbar-brand" href="./empsite.php">E-Store</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    <li class="nav-item">
        <a class="nav-link disabled" href="#" style = "color:#62FF00">(Employee)   </a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="./empsite.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <?php if (empty($_SESSION['user_id'])){ ?>   
        <a class="nav-link" href="./login.php">Login</a>
        <?php  } else { ?> 
          <a class="nav-link" href="./logout.php">Logout</a>
        <?php   } ?>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./Checkstock.php">Check Product Stock</a>
      </li>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./Productlist.php">Product List</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./addstock.php">Add Stock</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./Supplierlist.php">Supplier List</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./sqlqueries.php">SQL SQUERIES</a>
      </li>
      
     
    </ul>
    
  </div>
</nav>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
</body>
</html>