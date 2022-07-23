<?php 
//session_start();

	//include("connection.php");
	//include("functions.php"); 
  include("navbar.php");

  // if(!empty($_SESSION['log'])){
  //   session_destroy(); 
  //   header('location: index.php');
  // }

  
	$user_data = check_login($conc);
  
  $sql = "select * from vwpab ; ";
  $lst = $conc->query($sql);
if (empty($_SESSION['user_id'])){}
else{
  $userphone= $user_data['PhoneNumber'] ;

  //echo $userphone;
  $cquery = "select * from Cart where PhoneNumber = '$userphone' and cart_status ='current' limit 1  ;";
  //echo $cquery;
  $cresult =  mysqli_query($conc, $cquery);
  //echo $cquery;
  //echo $cresult;
  if ( mysqli_num_rows($cresult)>0 ){
    while ( $rowdata = mysqli_fetch_array($cresult)){
       $cid= $rowdata['Cart_id']; 
    }
  }
}
  //echo "  \n  ";
  //$cid = $rowdata['Cart_id'];
  //echo $cid;
  //echo "  \n  ";
  if( !empty($_GET['addtocart'])){
    //if( !$user_data['PhoneNumber'] )
    {
      $Product_ID = $_GET['Product_ID'];
      $Quantity = $_GET['Quantity'];
      //echo $Product_ID ," ", $Quantity   ;
      //echo "  \n  ";
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

////check if the cart has product



      $addtocart = "insert into added_to(quantity , cart_ID , Product_ID) values($Quantity , $cid , $Product_ID )   on duplicate key update Cart_Id = $cid , Product_ID = $Product_ID    ; ";
      //echo $addtocart;
      mysqli_query($conc, $addtocart);
      //echo "  \n  ";
      //echo $addtocart;

      ///to remove from stock
      $removestock = "update product set stock = $stock1 - $Quantity  where Product_ID =$Product_ID ;  ";
      mysqli_query($conc, $removestock);
      //echo $removestock;
      



    }
  }
  



 ?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Store</title>


    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- OWL CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Font CDn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Custome CSS file  -->
<link rel="stylesheet" href="style.css">

<style>
  .grid-container {
  display: grid;
  grid-template-columns: auto auto auto auto;
  row-gap: 10px;
}

  </style>

</head>
<body>
<img src="./assets/banner1.png"  height = "360" width="100%"/>


<br>
 
<?php
 if (empty($_SESSION['user_id'])){ } 
else{
//echo $user_data['PhoneNumber']; 
    $userphone= $user_data['PhoneNumber'] ; } ?>
<hr>
<!-- <h2>Products</h2> -->
<div class="grid-container" >
<?php
while($product = mysqli_fetch_assoc($lst)):
 $stock =   $product['Stock']; 
 //echo $stock;


?>

<div class="card" style="width: 22rem;">
  <h4><?php $product['Name'] ; ?> </h4>
  <img src = " <?= $product['image'] ; ?> " alt="<?= $product['Name']; ?>  " height = "105" width="100" />
  <div class="card-body">
  <h5 class="card-title" > <?= $product['Name']; ?> </h5>
  <p class="card-text">Rs <?= $product['Price']; ?> </p>
  <p class="card-text">Expiry Date : <?= $product['DOE']; ?> </p> 
 <!-- <a href = "details.php"> -->




   <form>
     
    <input type="hidden"  name="Product_ID"  value=" <?= $product['Product_ID']; ?>" />
    <input type="hidden" name="PhoneNumber" value=" <?= $userphone ?>" />
    <!--<input type="text" name="Cart_id" value=" <?= $cart_id ?>" /><br> -->
     

    <table><tr>
    <td class="quantity"> Enter the Quantity </td>
     
    <td><input type="number" name="Quantity" min=0 max= "<?= (int)$product['Stock'] ?>" > </td>
</table></tr>
<div class="cart">
  <?php if(empty($_SESSION['user_id'])){ ?> 
    <button type="submit" href="/webdev/estore/Login.php" class="btn btn-danger" data-toggle="modal"    >  <a href="/webdev/estore/Login.php" style="color:white"   >   First Login To Purchase </a> </button> 

  <?php } else { ?>
  <button type="submit" name="addtocart" class="btn btn-success" data-toggle="modal" data-target="#details-1" value="Add to cart"  >Add to cart </button>
    <?php } ?>
  </div>
</div>

    <!-- </a> -->
</form>
</div>
<?php endwhile; ?>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- Owl js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>



</body>
</html>