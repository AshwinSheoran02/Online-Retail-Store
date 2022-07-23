<?php

//session_start();

// 	include("connection.php");
// 	include("functions.php");

    include("navbar.php");
    $user_data = check_login($conc);



    if (empty($_SESSION['user_id'])){}
else{

    $userphone= $user_data['PhoneNumber'] ;

    //echo $userphone;
    $cquery = "select * from Cart where PhoneNumber = '$userphone' AND CART_STATUS='current' limit 1 ;";
    //$cquery = " CALL VIEWCART('$userphone'); ";
    $cresult =  mysqli_query($conc, $cquery);
   
    //echo $cquery;
    //echo $cresult;


    


    if ( mysqli_num_rows($cresult)>0 ){
      while ( $rowdata = mysqli_fetch_array($cresult)){
         $cid= $rowdata['Cart_id'];
      }
    }
    //echo $cid;
   // echo "  \n  ";
    //$cid = $rowdata['Cart_id'];
    //echo $cid;


    $sql = "select * from VWATP WHERE Cart_ID = $cid ; ";
    $lst = $conc->query($sql);

    //////////////////////////////////////////////////Insert into order table
    if (empty($_SESSION['user_id'])){}
else{
  if( !empty($_GET['placeorder'])){
    //if( !$user_data['PhoneNumber'] )
    {
      //$cid is cart id
      //$userphone is phone number
      //$C1 is total cost
      $C1 = $_GET['tcost'];
      $ecode1 = $_GET['code'];

      $percen = "select  * FROM COUPONS WHERE CODE = '$ecode1'   limit 1;    " ;
      $fpercen =  mysqli_query($conc, $percen);
    //echo $cquery;
    //echo $cresult;
    if ( mysqli_num_rows($fpercen)>0 ){
      while ( $rowdata1 = mysqli_fetch_array($fpercen)){
         $cpercentage = $rowdata1['Discount'];
      }
    }
    //echo $cpercentage;
    //echo "      ";
      $C1 = $C1 - ( ($cpercentage/100 ) *$C1 );
      //echo $C1;


      $Order_date = date('Y-m-d');
      //echo $Order_date;
      $Delivery_date = date('Y-m-d', strtotime($Order_date. ' + 2 days'));
      //$ecode = $_POST['code'];

      //echo $Product_ID ," ", $Quantity   ;
      //echo "  \n  ";
      $addorder = "insert into orders(Total_Cost , Order_Status , Delivery_Date , Order_Date , Cart_ID , PhoneNumber , Code ) values($C1 , 'ordered' , '$Delivery_date' , '$Order_date'  , $cid , $userphone , '$ecode1'   ); ";
      //echo $addorder;
      mysqli_query($conc, $addorder);
      $C2 = $C1;
      header("Location: payment.php");
      //echo "  \n  ";
      //echo $addtocart;
    }
  }

 



/////////////////////////////////////////////////////////////////////////

  ////For adding and removing items from the cart

  if( !empty($_GET['add'])){
    $Product_ID = $_GET['Product_ID'];
    $quantity = $_GET['Quantity1'];

     //////////////////////////////////////////////////////// Get product STOCK
$pquery = "select * from product where product_ID = $Product_ID limit 1  ;";
$presult =  mysqli_query($conc, $pquery);
//echo $cquery;
//echo $cresult;
if ( mysqli_num_rows($presult)>0 ){
  while ( $rowdata4 = mysqli_fetch_array($presult)){
     $stock1 = $rowdata4['Stock'];
  }
}
//echo $stock1;
//////////////////////////////////////////////////////////
//////////Get cart quauntity

$sql10 = "select * from added_to WHERE Cart_ID = $cid and product_ID = $Product_ID limit 1 ; ";
$cartresult =  mysqli_query($conc, $sql10);

if ( mysqli_num_rows($cartresult)>0 ){
  while ( $rowdata5 = mysqli_fetch_array($cartresult)){
     $quantity1 = $rowdata5['quantity'];
  }
}

    $addtocart = "update added_to set quantity = $quantity1 + 1  where Cart_ID = $cid and product_ID = $Product_ID ;  ";
    mysqli_query($conc, $addtocart);
    //echo "  \n  ";
    //echo $addtocart;

    ///to remove from stock
    $removestock = "update product set stock = $stock1 - 1  where Product_ID =$Product_ID ;  ";
    mysqli_query($conc, $removestock);
    //echo $removestock;
    header("Location: cart.php");


///////////////////////////////////////////////////////////////////

  }

  /////////////////////subtract from cart
  if( !empty($_GET['subtract'])){
    $Product_ID = $_GET['Product_ID'];
    $quantity = $_GET['Quantity1'];

     //////////////////////////////////////////////////////// Get product STOCK
$pquery = "select * from product where product_ID = $Product_ID limit 1  ;";
$presult =  mysqli_query($conc, $pquery);
//echo $cquery;
//echo $cresult;
if ( mysqli_num_rows($presult)>0 ){
  while ( $rowdata4 = mysqli_fetch_array($presult)){
     $stock1 = $rowdata4['Stock'];
  }
}
//echo $stock1;
//////////////////////////////////////////////////////////
//////////Get cart quauntity

$sql10 = "select * from added_to WHERE Cart_ID = $cid and product_ID = $Product_ID limit 1 ; ";
$cartresult =  mysqli_query($conc, $sql10);

if ( mysqli_num_rows($cartresult)>0 ){
  while ( $rowdata5 = mysqli_fetch_array($cartresult)){
     $quantity1 = $rowdata5['quantity'];
  }
}

    $addtocart = "update added_to set quantity = $quantity1 - 1  where Cart_ID = $cid and product_ID = $Product_ID ;  ";
    mysqli_query($conc, $addtocart);
    //echo "  \n  ";
    //echo $addtocart;

    ///to remove from stock
    $removestock = "update product set stock = $stock1 + 1  where Product_ID =$Product_ID ;  ";
    mysqli_query($conc, $removestock);
    //echo $removestock;
    header("Location: cart.php");


///////////////////////////////////////////////////////////////////

  }



}
    






  }


    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
</head>
<body>

<h2>Cart</h2>
<br>
<?php $C = 0; ?>

<?php
//$Order_date = date('Y-m-d');
//echo $Order_date ;

  //  $Delivery_date = date('Y-m-d', strtotime($Order_date. ' + 2 days'));
    //echo $Delivery_date;


if (empty($_SESSION['user_id'])){}
else{
while($cproduct = mysqli_fetch_assoc($lst)):

?>


<div class="col-md-5 text-centre mt-5">
  <h4><?php $cproduct['Name'] ;?> </h4>
  <img src = " <?= $cproduct['image'] ;?> " alt="<?= $cproduct['Name'];?>  " height = "105" width="100" />
  <p class="pname"> <?= $cproduct['Name']; ?> </p>
  <p class="lprice">Rs <?=$p = $cproduct['Price']; ?> </p>
  <p class="quan">Quantity:  <?= $q =  $cproduct['quantity']; ?> </p>

   <p hidden class="quan" >total cost of cresult:  <?=$C = $C + $p*$q ; ?> </p>


<form>
<!-- <p class="type">type <//?=  $p * $q ; ?></p> -->

 <!-- <a href = "details.php"> -->

<!-- For adding and removing products from the cart -->
<input type="hidden"   name="Product_ID" value=" <?= $cproduct['Product_ID']; ?>" /><br>
<input type="hidden"  name="Quantity1" value=" <?= $q ?>" /><br>


<button type="submit" class="btn btn-info"  name="subtract" value="minus" > - </button>
<button type="submit" class="btn btn-info"  name="add" value="plus"  > + </button>

</form>


</div>
<hr>
<?php endwhile; ?>
<form>
<h1> Total Cost: <?php echo $C;   } ?> </h1>
<br>
<marquee scrollamount="8" >We have a Free Coupon Code just for you , use 'FREE2' !! We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!     We have a Free Coupon Code just for you , use 'FREE2' !!
     We have a Free Coupon Code just for you , use 'FREE2' !! We have a Free Coupon Code just for you , use 'FREE2' !!   >We have a Free Coupon Code just for you , use 'FREE2' !! We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!     We have a Free Coupon Code just for you , use 'FREE2' !!
     We have a Free Coupon Code just for you , use 'FREE2' !! We have a Free Coupon Code just for you , use 'FREE2' !! >We have a Free Coupon Code just for you , use 'FREE2' !! We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!     We have a Free Coupon Code just for you , use 'FREE2' !!
     We have a Free Coupon Code just for you , use 'FREE2' !! We have a Free Coupon Code just for you , use 'FREE2' !! >We have a Free Coupon Code just for you , use 'FREE2' !! We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!     We have a Free Coupon Code just for you , use 'FREE2' !!
     We have a Free Coupon Code just for you , use 'FREE2' !! We have a Free Coupon Code just for you , use 'FREE2' !! >We have a Free Coupon Code just for you , use 'FREE2' !! We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!  We have a Free Coupon Code just for you , use 'FREE2' !!     We have a Free Coupon Code just for you , use 'FREE2' !!
     We have a Free Coupon Code just for you , use 'FREE2' !! We have a Free Coupon Code just for you , use 'FREE2' !!    </marquee>

 <input type="text" name = "code" placeholder="Enter the Coupon Code">
 <hr>
 <input type="hidden"  name="tcost" value=" <?= $C; ?>" /><br>

<div class="order">
  <?php if(empty($_SESSION['user_id'])){ ?> 
    <button type="submit" href="/webdev/estore/Login.php" class="btn btn-danger" data-toggle="modal"    >  <a href="/webdev/estore/Login.php" style="color:white"   >   First Login To Order </a> </button> 

  <?php } else { ?>
  <button type="submit" name="placeorder" class="btn btn-success" data-toggle="modal"  value="Place the Order"  >Place your Order </button>
    <?php }  ?>
</div>
  </form>
<hr>

<!-- <h1> Total Cost: <//?php echo $C2;    ?> </h1>  






</body>
</html>