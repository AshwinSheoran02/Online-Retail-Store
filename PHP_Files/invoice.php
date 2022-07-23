<?php

    require_once 'vendor/autoload.php';


    $sql = "Select Name, Price, Required, Code, Discount FROM receipt_1 WHERE Order_ID='O000002' and User_ID='C000002'";
    $stmt = $conn->query($sql);
    $discount = $stmt->fetch_row();
    $discount = $discount[4];
    $sql2 = "Select Receipt_ID from receipt WHERE Order_ID='O000002'";
    $stmt2 = $conn->query($sql2);
    $receipt_id = $stmt2->fetch_row();
    $receipt_id = $receipt_id[0];
    $sql3 = "Select F_name from customer where User_ID='C000002'";
    $stmt3 = $conn->query($sql3);
    $f_name = $stmt3->fetch_row();
    $f_name = $f_name[0];
    $sql4 = "Select L_name from customer where User_ID='C000002'";
    $stmt4 = $conn->query($sql4);
    $l_name = $stmt4->fetch_row();
    $l_name = $l_name[0];
    $gt = 0;
    $i = 1;
    $html = '<!DOCTYPE html>
                <html lang="en">
                <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Invoice</title>
                <style>
                    h1 {
                        text-align: center;
                        font-family: Verdana, Geneva, Tahoma, sans-serif;
                    }
                    td,th {
                        border: 1px solid #444;
                        padding: 8px;
                        text-align: left;
                    }
                    .my-table {
                        text-align: right;
                    }
                </style>
                </head>
                <body>
                    <h1> Invoice </h1>
                    <p>Invoive No -'.$receipt_id.'</p>
                    <p>Name -'.$f_name.' '.$l_name.'</p>
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
                        <tbody>';
    while($row = $stmt->fetch_row())
    {
        $html .= '<tr>
                    <td>'.$i.'</td>
                    <td>'.$row[0].'</td>
                    <td>'. number_format($row[1],2) .'</td>
                    <td>'.$row[2].'</td>
                    <td>'. number_format($row[2]*$row[1],2) .'</td>
                </tr>';
        $gt += ($row[1])*($row[2]);
        $i++;
    }
    $html .= '.</tbody>
                <tr>
                    <th colspan = "4" class="my-table">Total Price</th>
                    <th>'.$gt.'</th>
                </tr>
                <tr>
                    <th colspan="4" class="my-table">Discount</th>
                    <th>'.(int)($gt*$discount).'</th>
                </tr>
                <tr>
                    <th colspan="4" class="my-table">Grand Total</th>
                    <th>'.$gt - (int)($gt*$discount).'</th>
                </tr>
                </table>
                </body>
                </html>';
    use Dompdf\Dompdf;
    $dompdf = new Dompdf;
    $dompdf->loadHtml($html);
    $dompdf->setPaper('A4', 'portrait');
    $dompdf->render();
    $dompdf->stream('invoice.pdf');
?>