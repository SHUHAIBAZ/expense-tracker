<?php

include "config.php"; 
$id = $_GET['id']; 
$del = mysqli_query($conn,"delete from transactions where transaction_id = '$id'"); 

if($del)
{
    mysqli_close($conn); // Close connection
    header("location:transaction.php");
    exit;	
}
else
{
    echo "<script>alert('Error deleting record')</script>";

}
?>