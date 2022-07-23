<?php

// session_start();

// 	include("connection.php");
// 	include("functions.php");
    include("navbar.php");
    $user_data = check_login($conc);

    if (empty($_SESSION['user_id'])){}
    else{
        $userphone= $user_data['PhoneNumber'] ;
    
        //echo $userphone;
        $oquery = "select * from orders where PhoneNumber = '$userphone' AND order_status='ordered' limit 1 ;";
        $oresult =  mysqli_query($conc, $oquery);
        //echo $cquery;
        //echo $cresult;
        if ( mysqli_num_rows($oresult)>0 ){
          while ( $rowdata3 = mysqli_fetch_array($oresult)){
             $oid= $rowdata3['Order_ID'];
             $ocost= $rowdata3['Total_Cost'];

                }
        }
        
        //echo $oid;
    }


    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
</head>
<body>
    <h1>Payment</h1>
    <hr>
    <h5>Amount to be Paid : <p class="tpay">Rs <?=$p = $ocost ?> </p></h5>
    <hr>

    <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Select your payment option
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="./cardpayment.php">Card</a>
    <a class="dropdown-item" href="./COD.php">Cash On Delivery</a>
    <a class="dropdown-item" href="./Netbanking.php">Net banking</a>
    <a class="dropdown-item" href="./paytm.php">E - Wallet (Paytm)</a>
  </div>
</div>
    
</body>
</html>