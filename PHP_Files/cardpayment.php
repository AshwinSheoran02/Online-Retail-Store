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

    if( !empty($_GET["dopaytm"]))
        {
        //if( !$user_data['PhoneNumber'] )
          //$Product_ID = $_GET['Product_ID'];
          //$Quantity = $_GET['Quantity'];
          //echo $Product_ID ," ", $Quantity   ;
          //echo "  \n  ";
          $addtocart = "insert into payment(Payment_Type , PhoneNumber , Order_ID ) values('Card' , '$userphone' , $oid ); ";
          mysqli_query($conc, $addtocart);
          //echo "  \n  ";
          $genbill= "insert into receipt(Payment_date , final_cost , PhoneNumber , Order_Id ) values(CURDATE() , $ocost, '$userphone' , $oid ); ";
          mysqli_query($conc, $genbill);
          //echo $addtocart;
          //echo "Hello1234";
          //echo "Paid";
          header("Location: receipt.php");

        
      }

    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Card</title>
</head>
<body>
    <hr>
    <h1>Pay through Card</h1>
    <hr>
    <h5>Amount to be Paid : <p class="tpay">Rs <?=$p = $ocost ?> </p></h5>
    <hr>

    <form action="/action_page.php">
  <label for="bank">Select your Card:</label>
  <select id="bank" name="bank">
  <option value="fiat">RuPay</option>
    <option value="volvo">VISA</option>
    <option value="saab">MASTERCARD</option>
  </select>

</form>
<hr>

    <form>
    Enter Name on Card
    <input type="text" name = "PhoneNumber"placeholder="Enter User Name">
            <br><br>
            Enter Card Pin
            <input type="password" name = "password"placeholder=" Enter Password">
            <br><br>
            The amount to be paid
            <input disabled type="amount" name = "amount"placeholder="Bank amount" value = "<?=$p = $ocost ?>" >
            <br><br>
            Pay Through your Card
            <br>
            <button type="submit" name="dopaytm" class="btn btn-success" data-toggle="modal" data-target="#details-1" value="paid"  > Pay </button>
            <br><br>
    </form>
    
</body>
</html>