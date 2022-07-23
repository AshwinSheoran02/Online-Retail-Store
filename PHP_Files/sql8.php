<?php
///SQL query - 1
//#Select the Supplier who send the product
include("empnavbar.php");
$sql1 = " SELECT payment_Type , Count(Payment_type) as counter from payment group by Payment_Type order by Counter desc ;";
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
<h5>  Most used Payment Type </h5> <hr>
<h5> SELECT payment_Type , Count(Payment_type) as counter from payment group by Payment_Type order by Counter desc ;  </h5> <hr>
<h4>Output is </h4>
<hr>
<p> Payment Type and times used <p>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Payment Type</th>
      <th scope="col">Times used </th>
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
<td>  <?=   $p1['payment_Type'];  ?> </td>
<td>  <?=   $p1['counter']; ?> </td>
</tr>

  <?php    $i = $i +1;
 endwhile; ?>
  </tbody>
</table>
<p><p>
    
</body>
</html>