<?php
require_once "conn.php";
header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $q1 = "SELECT userName FROM login";
    $result = mysqli_query($conn, $q1);

    $patientList = array(); // Initialize an array to hold patient IDs

    // Fetch data from the database and store it in the array
    while ($row = mysqli_fetch_assoc($result)) {
        $patientList[] = $row['userName'];
    }

    // Convert the PHP array to JSON format
    $jsonPatientList = json_encode($patientList);

    // Output the JSON data
    echo $jsonPatientList;
}
?>
