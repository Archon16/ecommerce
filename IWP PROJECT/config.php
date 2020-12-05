<?php
	$conn = new mysqli("localhost","root","","iwpproject");
	if($conn->connect_error){
		die("Connection Failed!".$conn->connect_error);
	}
?>