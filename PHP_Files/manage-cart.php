<?php

//session_start();

// 	include("connection.php");
// 	include("functions.php");

    include("navbar.php");
    $user_data = check_login($conc);



    if (empty($_SESSION['user_id'])){}
else{
  $userphone= $user_data['PhoneNumber'] ;

  $cquery = " CALL VIEWCART('$userphone'); ";
    $cresult =  mysqli_query($conc, $cquery);
   
    //echo $cquery;
    //echo $cresult;
    if ( mysqli_num_rows($cresult)>0 ){
      while ( $rowdata = mysqli_fetch_array($cresult)){
         $cid= $rowdata['Cart_id'];
      }
    }
    echo $cid;
}

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
  <h1> The Current Cart is <?php echo $cid ?> </h1>
</body>
</html>