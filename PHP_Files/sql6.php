<?php
///SQL query - 1
//#Select the Supplier who send the product
include("empnavbar.php");
$sql1 = " SELECT F_name , L_name , PhoneNumber from Customer where PhoneNumber IN ( Select PhoneNumber From cart natural join ( Select cart_id from added_to where product_id = 58 ) AS C  ) ;";
$lst = $cone->query($sql1);


 

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<h4>The SQL query to be executed is  </h4> <hr>
<h5>   Customers who bought a particular product </h5> <hr>
<h5> SELECT F_name , L_name , PhoneNumber from Customer where PhoneNumber IN ( Select PhoneNumber From cart natural join ( Select cart_id from added_to where product_id = 58 ) AS C  ) ;  </h5> <hr>
<h4>Output is </h4>
<hr>
<p> Name and  Phone Number -> <p>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Phone Number</th>
    </tr>
  </thead>
  <tbody>

<?php
$i=1;
while($p1 = mysqli_fetch_assoc($lst)):
?>
  <!-- <p > <//?php echo $i; echo ". "; ?>  <//?=   $p1['F_name']; echo" "; echo $p1['L_name'];  echo "  - ";     echo  $p1['PhoneNumber'] ?> </p> -->
  <tr>
<th scope="row"> <?php echo $i; ?></th>
<td>  <?=   $p1['F_name']; echo " "; echo $p1['L_name']; ?> </td>
<td>  <?=   $p1['PhoneNumber']; ?> </td>
</tr>

  <?php    $i = $i +1;
 endwhile; ?>
<p><p>
    
</body>
</html>