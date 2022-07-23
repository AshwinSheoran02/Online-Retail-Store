<?php
///SQL query - 1
//#Select the Supplier who send the product
include("empnavbar.php");
$sql1 = " Select name ,  count(Product_ID) as counter from vwatp group by product_ID order by counter desc Limit 1;";
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
<h5>  Item in most demand ( item in most carts) most famous </h5> <hr>
<h5>Select name ,  count(Product_ID) as counter from vwatp group by product_ID order by counter desc Limit 1;  </h5> <hr>
<h4>Output is </h4>
<hr>
<?php
while($p1 = mysqli_fetch_assoc($lst)):
?>
  <p >Name of the product ->  <?= $p1['Name']; ?> </p>
  <p >Total Quantity present in carts ->  <?= $p1['counter']; ?> </p>


  <?php endwhile; ?>

    
</body>
</html>