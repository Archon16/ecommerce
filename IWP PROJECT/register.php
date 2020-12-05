<?php

session_start();


$con=mysqli_connect('localhost','root');
if($con)
{
    echo "success in connecting to database <br> ";
}else{
    echo"unsuccessful";
}

mysqli_select_db($con,'iwpproject');

$name=$_POST['user'];
$pass=$_POST['password'];

$q="select * from signin where name='$name' && password='$pass' ";
$result=mysqli_query($con,$q);

$num=mysqli_num_rows($result);
if($num==1){
	die("duplicate data can't process registeration, try with another name and password") ;
}else{
	$qy="insert into signin (name,password) values ('$name', '$pass')";
	mysqli_query($con,$qy);
	header('location:signin.html');
}
?>
