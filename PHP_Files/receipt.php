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
        $oquery = "select * from receipt where PhoneNumber = '$userphone' AND receipt_id = ( SELECT MAX(receipt_id)  from receipt where PhoneNumber = '$userphone' ) limit 1 ;";
        $oresult =  mysqli_query($conc, $oquery);
       // echo $oquery;
        //echo $oresult;
        if ( mysqli_num_rows($oresult)>0 ){
          while ( $rowdata3 = mysqli_fetch_array($oresult)){
             //$oid= $rowdata3['Order_ID'];
             $ocost= $rowdata3['Final_cost'];
             //echo $ocost;

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
    <title>Receipt</title>
</head>
<body>
    <hr>
    <h1>Thank You for the Payment</h1>
    <hr>
    <h5>Amount  Paid : <p class="tpay">Rs <?=$p = $ocost ?> </p></h5>
    <hr>
    <a href ="pdf.php" class = "btn btn-danger" target="blank"> Get Invoice </a>
    
  
</body>
</html>