<?php
///SQL query - 1
//#Select the Supplier who send the product
include("empnavbar.php");
$sql1 = " Select Supplier_Name from Supplier Natural Join ( Select Supplier_ID from Supplies where Product_Id = 3) AS S;";
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
<h5> Select the Suppliers who send the product </h5> <hr>
<h5>Select Supplier_Name from Supplier Natural Join ( Select Supplier_ID from Supplies where Product_Id = 3) AS S;  </h5> <hr>
<h4>Output is </h4>
<hr>
<p mar> Supplier ->  </p>
<?php   $i= 1;
while($p1 = mysqli_fetch_assoc($lst)):
?>
  <p > <?php echo $i; echo ". "; ?> <?= $p1['Supplier_Name']; ?> </p>

  <?php     $i = $i +1;
 endwhile; ?>

    
</body>
</html>