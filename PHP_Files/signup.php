<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp</title>
<style>

.asterisc {
  display: block;
  color: red;
  margin: -25px 180px;
}

    </style>


</head>
<body>


<?php

    // include("connection.php");
    // include("functions.php");
    include("navbar.php");

    

    if($_SERVER[ 'REQUEST_METHOD'] =="POST" )
    {
        //something was posted
        $user_phone =  $_POST['PhoneNumber'];
        $password = $_POST['password'];
        
        $F_name =  $_POST['F_name'];
        $L_name =  $_POST['L_name'];
        $H_No =  $_POST['H_No'];
        $Area =  $_POST['Area'];
        $State =  $_POST['State'];
        $Pin =  $_POST['Pin'];


        if(!empty($user_phone) && !empty($password))
        {
                //Check Existing user
                $query = "select * from authentication_system where PhoneNumber = '$user_phone' limit 1";
                $result =  mysqli_query($cont, $query);
                
                if($result){
                        $user_data = mysqli_fetch_assoc($result);
                            
                         if ($user_data['PhoneNumber'] === $user_phone){

                            ?> <h5 style="color:red;" > User is already registered Go to Login Page to Sign In or Register using a different phone Number </h5>
                            <hr>
                            <?php


                         }
                         else{
						
                         
                /////////////

                ///password Hasing
                $hash = password_hash($password, PASSWORD_DEFAULT );

                //save to db
                $query = "insert into authentication_system (PhoneNumber , password) values( '$user_phone' , '$hash' );   ";
                mysqli_query($cont, $query);

                $userdet = " insert into user(Login_type , PhoneNumber)  values('Customer' ,'$user_phone');  ";
                mysqli_query($cont, $userdet);

                $savedetail = " insert into customer(PhoneNumber , F_name , L_name , H_No , Area , State , Pin) values ('$user_phone', '$F_name' , '$L_name' , '$H_No' , '$Area' , '$State' , '$Pin' ) ;  ";
                mysqli_query($cont , $savedetail);
                
                $cartadd = " insert into cart(PhoneNumber, cart_status) values ('$user_phone' , 'current');  ";
                mysqli_query($cont , $cartadd);
                
                header("Location: login.php");
                die;
            }
        }
                     
        


        }

    }


//    $_SESSION;

?>


<h1> Create your account </h1>
    <hr>

    <div id="box">
        <form method = "post">
            <div style="font-size: 18px;">Signup</div>
            <input type="tel" name = "PhoneNumber" placeholder="Phone Number" pattern="[0-9]{10}" required >
            <span class="asterisc">*</span>
            <br><br>
            <input type="password" name = "password" placeholder="Password" required>
            <span class="asterisc">*</span>
            <br><br>
            <input type="text" name = "F_name" placeholder="First Name" required>
            <span class="asterisc">*</span>
            <br><br>
            <input type="text" name = "L_name" placeholder="Last Name" >
            <br><br>
            <input type="text" name = "H_No" placeholder="House Number" required >
            <span class="asterisc">*</span>
            <br><br>
            <input type="text" name = "Area" placeholder="Area" required >
            <span class="asterisc">*</span>
            <br><br>
            <input type="text" name = "State" placeholder="State" required>
            <span class="asterisc">*</span>
            <br><br>
            <input type="text" name = "Pin" placeholder="Pin" required >
            <span class="asterisc">*</span>
            <br><br>



            <input type="submit" name = "Register">
            <br><br>
            Already have an Account? <br>
            <a href="login.php">Click to Sign In</a>

            

        </form>
    </div>
    
</body>
</html>