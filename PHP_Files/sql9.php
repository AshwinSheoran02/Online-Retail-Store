<?php
///SQL query - 1
//#Select the Supplier who send the product
include("empnavbar.php");
$sql1 = " SELECT AVG(FINAL_COST) as Average_Sale from receipt where Payment_date <= curdate() And Payment_date > Curdate() - 7;";
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
<h5>  Average sale of Last 7 days </h5> <hr>
<h5>SELECT AVG(FINAL_COST) as Average_Sale from receipt where Payment_date <= curdate() And Payment_date > Curdate() - 7; </h5> <hr>
<h4>Output is </h4>
<hr>
<p>Average Sale - > </p>
<?php
while($p1 = mysqli_fetch_assoc($lst)):
?>
  <h6 >  <?= (float) $p1['Average_Sale']; ?> Rs </h6> 


  <?php endwhile; ?>

    
</body>
</html>