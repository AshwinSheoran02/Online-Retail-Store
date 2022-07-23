<?php
///SQL query - 1
//#Select the Supplier who send the product
include("empnavbar.php");
$sql1 = "select Stock from product where name = 'Red Local Carrot- 1 kg' ;";
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
<h5> Finding the stock of Product when searched using name (using indexing) </h5> <hr>
<h5> Index created using <h5><br>
<h5>CREATE UNIQUE INDEX idxName ON Product ( Name);</h5><hr>
<h5>select Stock from product where name = 'Red Local Carrot- 1 kg' ;  </h5> <hr>
<h4>Output is </h4>
<hr>
<?php
while($p1 = mysqli_fetch_assoc($lst)):
?>
  <p >Stock left ->  <?= $p1['Stock']; ?> </p>

  <?php endwhile; ?>

    
</body>
</html>