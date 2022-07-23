<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>

<?php
// session_start();

// include("connection.php");
//     include("functions.php");
    include("navbar.php");
    
    //$user_data = login_status($cont);

    if($_SERVER[ 'REQUEST_METHOD'] =="POST" )
    {
        //something was posted
        $user_phone =  $_POST['PhoneNumber'];
        $password = $_POST['password'];

        if(!empty($user_phone) && !empty($password))
        {
            ////Check if user has account
            $query0 = "Select * from authentication_system ";
            $lst = $conc->query($query0);
            $checkuser = 0;
            while($data = mysqli_fetch_assoc($lst)):
                $checku =   $data['PhoneNumber']; 
                if (in_array( $user_phone , $data )){
                    $checkuser = 1;




                //read from db
                $query = "select * from authentication_system where PhoneNumber = '$user_phone' limit 1";
                $result =  mysqli_query($cont, $query);
                
                if($result){

                        $user_data = mysqli_fetch_assoc($result);
                            
                         //if ( $user_data['Password'] === $password ){
                        if ( password_verify($password , $user_data['Password'] ) ){

                            $_SESSION['user_id'] = $user_data['PhoneNumber'];
                            header("Location: index.php");
						die;
                         }
                         //////////////Wrong Password
                         else{
                             ?> 
                             <h5  style="color:red;"> Wrong Password, Try again </h5>
                             <?php
                            
                         }
                     
                } 
                
            }
            endwhile;
            
            if ($checkuser === 0){
                ?> 
                <h5  style="color:red;"> User does not exists , First Register the user !</h5>
                 <?php
            }
        }

    }




?>


    <h1> Login using your details </h1>
    <hr>

    <div id="box">
        <form method = "post">
            <div style="font-size: 18px;">Login</div>
            <input type="tel" name = "PhoneNumber"placeholder="Phone Number" pattern="[0-9]{10}"> <br>
            Phone Number Should be of 10 Digits Numeric characters
            <br><br>
            <input type="password" name = "password"placeholder="Password">
            <br><br>
            <input type="submit" name = "Login">
            <br><br>
            Don't have an Account? <br>
            <a href="signup.php">Click to Sign Up</a>
            <br><br>
            You are an Employee? <br>
            <a href="emplogin.php">Click to Sign in as Employee</a>


        </form>
    </div>
    
</body>
</html>