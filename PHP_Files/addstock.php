<?php

// session_start();

// 	include("connection.php");
// 	include("functions.php"); 
include("empnavbar.php");
  

  $user_data = check_login($cone);
  $userphone= $user_data['PhoneNumber'] ;

  $q1 = "select * FROM supplier ;";
  $list = $cone->query($q1);

  if( !empty($_GET['addstock'])){
    $pid = $_GET['Product_ID'];
    $ostock = $_GET['Quantity'];
    $sid = $_GET['Supplier_ID'];
    $Order_date = date('Y-m-d');
    $Delivery_date = date('Y-m-d');


    //INsert into stock_order
    $addorder = "insert into stock_order(Product_ID , Quantity , Date_OF_stock_Order , PhoneNumber , Supplier_ID ) values( $pid , $ostock ,'$Order_date' , '$userphone' , $sid    ); ";
    //echo $addorder;
    mysqli_query($cone, $addorder);

    //Get the orderNumber
    $getordernum = "Select *  from Stock_order Where Order_Number = (Select Max(Order_Number) from Stock_Order)  ; ";
    echo $getordernum;
    $result =  mysqli_query($cone, $getordernum);
    $order = mysqli_fetch_assoc($result);
    $ordernum = $order['Order_Number'];




    //insert into Supplies
    $supplied = "insert into Supplies (Supplier_ID , Product_ID , Date_of_Supply , Order_Number ) values($sid ,$pid ,'$Delivery_date' , $ordernum     )   ";
    $result2 =  mysqli_query($cone, $supplied);

    //get product details
        $pquery = "select * from product where product_ID = $pid limit 1  ;";
    $presult =  mysqli_query($cone, $pquery);
    //echo $cquery;
    //echo $cresult;
    if ( mysqli_num_rows($presult)>0 ){
      while ( $rowdata4 = mysqli_fetch_array($presult)){
        $stock1 = $rowdata4['Stock'];
      }
    }

    //Adding the Stock
    $finaladd = " call addstk($pid , $ostock  ); ";
    $result3 =  mysqli_query($cone, $finaladd);
    header("Location: stockordersuccess.php");


  }



  ?>

  <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Add stock</title>
  </head>
  <body>
      <h3> Placing Order for stock </h3>
      <hr>
      <form>
Select the Product ID for ordering stock 
<input type="text"  name="Product_ID" placeholder = "Enter the Product ID"> 
<br>
Select the quantity you want to order
<input type="text"  name="Quantity" placeholder = "Enter the order quantity"> 
<br>

Enter The Supplier ID

<input type="text"  name="Supplier_ID" placeholder = "Enter the Supplier ID"> 
<br>
     <button type="submit" name="addstock" class="btn btn-primary" data-toggle="modal" data-target="#details-1" value="addingstock"  > Place Order </button>

<!-- </form> -->

</form>
      
<hr>
    Forgot Product ID ? <br>
            <a href="productlist.php">Check Product ID here</a>     
            <hr>
    Forgot Supplier ID ? <br>
            <a href="supplierlist.php">Check Supplier ID here</a>  
            <hr>   
  </body>
  </html>