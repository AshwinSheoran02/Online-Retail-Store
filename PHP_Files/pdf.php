<?php


    session_start();

	include("connection.php");
	include("functions.php"); 
        $user_data = check_login($conc);
    $userphone= $user_data['PhoneNumber'] ;

    // $conc = new mysqli("localhost","cust1","ashwin","logintest");
    // $userphone = '9868139099';

    $sql = "Select * FROM vwreceipt WHERE PhoneNumber= '$userphone' and Order_ID = ( Select Max(order_ID) from Orders where PhoneNumber= '$userphone'  )  ;" ;
    $lst = $conc->query($sql);

    $sql2 = "Select Receipt_ID from receipt WHERE Order_ID = ( Select Max(order_ID) from Orders where PhoneNumber= '$userphone'  )  ; ";
    $stmt2 = $conc->query($sql2);
    $receipt_id = $stmt2->fetch_row();
    $receipt_id = $receipt_id[0];
    $sql3 = "Select F_name from customer where PhoneNumber = '$userphone'; ";
    $stmt3 = $conc->query($sql3);
    $f_name = $stmt3->fetch_row();
    $f_name = $f_name[0];
    $sql4 = "Select L_name from customer where PhoneNumber = '$userphone'; ";
    $stmt4 = $conc->query($sql4);
    $l_name = $stmt4->fetch_row();
    $l_name = $l_name[0];

    $sql5 = "Select * FROM Customer WHERE PhoneNumber= '$userphone' ;" ;
    $lst1 = $conc->query($sql5);
    $userdet = mysqli_fetch_assoc($lst1);
    $H_No = $userdet["H_No"];
    $Area = $userdet["Area"];
    $State = $userdet["State"];
    $Pin = $userdet["Pin"];
    
    
    
    $gt = 0;
    $i = 1;



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invoice</title>
<style>
    h2{
        font-family:Verdana , Geneva , Tahoma , sans-serif;
        text-align:center;
    }
    table{
        font-family:Arial , Helvetica , sans-serif;
        border-collapse: collapse;
        width:100%;
    }
    td , th{
        border: 1px solid #444;
        padding: 5px;
        text-align:left;
    }
    .my-table{
        text-align:right;
    }
    

</style>


</head>
<body>
<h1> Invoice </h1>
                    <p>Invoice No - <?php echo $receipt_id ?></p>
                    <p>Name -<?php echo $f_name ; echo " "; echo $l_name; ?></p>
                    <p> Address - > <?php echo $H_No; echo " , "; echo $Area; echo " , "; echo $State; echo " , "; echo $Pin;  ?> </p>
                    

                    <table>
                        <thead>
                            <tr>
                                <th>S No.</th>
                                <th>Product Name</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total Price</th>
                            </tr>
                        </thead>
                        <tbody> 
        <?php 
while($product = mysqli_fetch_assoc($lst)):
    $discount = $product["Discount"];

    ?> 
          <tr>
                    <td><?php echo $i ?></td>
                    <td> <?php echo $product["Name"] ?></td>
                    <td> <?php echo  $product["Price"]  ?> </td>
                    <td> <?php echo $product["quantity"] ?></td>
                    <td> <?php echo number_format($product["Price"]*$product["quantity"]) ?></td>
                </tr>
    <?php 
        $gt += ($product["Price"]*$product["quantity"]);
        $i++;
        $odate = $product["Order_date"];
        endwhile; 
    
     ?> </tbody>
     
                <tr>
                    <th colspan = "4" class="my-table">Total Price</th>
                    <th><?php echo $gt ?></th>
                </tr>
                <tr>
                    <th colspan="4" class="my-table">Discount</th>
                    <th> <?php echo (float)($gt*$discount/100) ?></th>
                </tr>
                
                <tr>
                    <th colspan="4" class="my-table">Grand Total (Rounded Off)</th>
                    <th> <?php echo $gt - (int)($gt*$discount/100) ?> </th>
                </tr>
                <tr>
                    <th colspan = "4" class="my-table">Order Date</th>
                    <th><?php echo $odate ?></th>
                </tr>
                </table>

</body>
</html>





