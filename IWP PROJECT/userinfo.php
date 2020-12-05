<?php
session_start();
$con=mysqli_connect('localhost','root');
if($con)
{
    echo "success";
}else{
    echo"unsuccessful";
}

mysqli_select_db($con,'iwpproject');

$user=$_POST['user'];
$email=$_POST['email'];
$mobile=$_POST['mobile'];
$comment=$_POST['comment'];

$query=" insert into userinfodata (user,email,mobile,comment) values ('$user','$email','$mobile','$comment') ";
mysqli_query($con,$query);
?>
