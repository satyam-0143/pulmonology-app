<?php
$conn=mysqli_connect("192.168.214.130:80","root","","pulmonary_rehabilitation");
if($conn->connect_error){
    die("Connection failed ".$conn->connect_error);
    }
?>