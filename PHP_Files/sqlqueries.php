<?php

include("empnavbar.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SQL Queries</title>
</head>
<body>
    <h3>Run the given SQL queries </h3>
    <hr>
    <div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Select the SQL query to run
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="./sql1.php">1. Select the Suppliers who send the product with ID 3</a>
    <a class="dropdown-item" href="./sql2.php">2. Finding the stock of Product(Red Local Carrot- 1 kg) when searched using name (using indexing)</a>
    <a class="dropdown-item" href="./sql3.php">3. Item in most demand ( item in most carts / most famous)</a>
    <a class="dropdown-item" href="./sql4.php">4. All the customers who ordered on a particular date 2022-04-27</a>
    <a class="dropdown-item" href="./sql5.php">5.  Supplier who Supplied the biggest collection of products at a time </a>
    <a class="dropdown-item" href="./sql6.php">6. Customers who bought a particular product ( ID = 58)   </a>
    <a class="dropdown-item" href="./sql7.php">7. Find name and quantity of expired products   </a>
    <a class="dropdown-item" href="./sql8.php">8. Most used Payment Method (COD/NET-BANKING/PAYTM/CARD)   </a>
    <a class="dropdown-item" href="./sql9.php">9. Average sale of Last 7 days     </a>
    <a class="dropdown-item" href="./sql10.php">10. Name of User with maximum purchase in a month (Most Money spent)   </a>

  </div>
</div>
</div>
    
</body>
</html>