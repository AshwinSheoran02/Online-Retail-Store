<?php
// session_start();

// include("connection.php");
//     include("functions.php");
    include("navbar.php");
    
    //$user_data = login_status($con);

    if($_SERVER[ 'REQUEST_METHOD'] =="POST" )
    {
        //something was posted
        $user_phone =  $_POST['PhoneNumber'];
        $password = $_POST['password'];

        if(!empty($user_phone) && !empty($password))
        {
                //read from db
                $query = "select * from authentication_system natural join user where PhoneNumber = '$user_phone' and login_type='employee' limit 1  ";
                $result =  mysqli_query($cont, $query);
                
                if($result){
                        $user_data = mysqli_fetch_assoc($result);
                            
                         if ($user_data['Password'] === $password){

                            $_SESSION['user_id'] = $user_data['PhoneNumber'];
                            header("Location: empsite.php");
						die;
                         }
                     
                } 
                


        }

    }




?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
<h1> Login using your details </h1>
    <hr>

    <div id="box">
        <form method = "post">
            <div style="font-size: 18px;">Login as Employee</div>
            <input type="text" name = "PhoneNumber"placeholder="Employee ID">
            <br><br>
            <input type="password" name = "password"placeholder="Password">
            <br><br>
            <input type="submit" name = "Login">
            <br><br>
            Not an Employee? <br>
            <a href="login.php">Go back to customer login page</a>


        </form>
    </div>
    
</body>
</html>