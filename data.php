<?php

include 'config.php';

session_start();
error_reporting(0);
$user_id = $_SESSION['user_id'];

$sql = "SELECT category, SUM(amount)  AS Amount FROM transactions WHERE user_id=$user_id AND type='expense' GROUP BY category";

$result = mysqli_query($conn, $sql);

$data = array();

foreach ($result as $row) {
    $data[] = array(
        'category' => $row["category"],
        'amount' => $row["Amount"],
        'color' => '#' . rand(100000, 999999) . ''
    );
}

echo json_encode($data);



?>