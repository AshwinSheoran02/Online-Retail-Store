<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "ashwin";
$dbname = "logintest";
$portno = "3306";



if ( !$con = mysqli_connect($dbhost , $dbuser , $dbpass ,$dbname,$portno ))
{ 
    die("failed to connect");
}


if ( !$cont = mysqli_connect($dbhost , "root" , $dbpass ,$dbname,$portno ))
{ 
    die("failed to connect");
}

if ( !$conc = mysqli_connect($dbhost , "root" , $dbpass ,$dbname,$portno ))
{ 
    die("failed to connect");
}

if ( !$cone = mysqli_connect($dbhost , "root" , $dbpass ,$dbname,$portno ))
{ 
    die("failed to connect");
}