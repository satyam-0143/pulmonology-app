<?php
require("conn.php");
header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $json = file_get_contents('php://input');
    $data = json_decode($json, true);

    if (isset($_POST["pid"])) {
       
        $id = $_POST["pid"];

        $sql1 = mysqli_query($conn, "SELECT apr FROM patient_info where pid='$id' ");
        $sql2 = mysqli_query($conn, "SELECT aprfvc FROM patient_info where  pid ='$id' ");
        $sql3 = mysqli_query($conn, "SELECT aprfev1 FROM patient_info where pid='$id' ");
        $sql4 = mysqli_query($conn, "SELECT aprfef FROM patient_info where  pid ='$id' ");
        $sql5 = mysqli_query($conn, "SELECT apo FROM patient_info where pid='$id' ");
        $sql6 = mysqli_query($conn, "SELECT apofvc FROM patient_info where  pid ='$id' ");
        $sql7 = mysqli_query($conn, "SELECT apofev1 FROM patient_info where pid='$id' ");
        $sql8 = mysqli_query($conn, "SELECT apofef FROM patient_info where  pid ='$id' ");
        $row = mysqli_fetch_assoc($sql1);
        $row1= mysqli_fetch_assoc($sql2);
        $row2 = mysqli_fetch_assoc($sql3);
        $row3= mysqli_fetch_assoc($sql4);
        $row4= mysqli_fetch_assoc($sql5);
        $row5= mysqli_fetch_assoc($sql6);
        $row6= mysqli_fetch_assoc($sql7);
        $row7= mysqli_fetch_assoc($sql8);

        // Access the value of 1Qnr1 column from the fetched row
        $s1 = $row['apr'];
        $s2 = $row1['aprfvc'];
        $s3 = $row2['aprfev1'];
        $s4 = $row3['aprfef'];
        $s5 = $row4['apo'];
        $s6 = $row5['apofvc'];
        $s7 = $row6['apofev1'];
        $s8 = $row7['apofef'];

        // Print or use the value obtained from SQL1
        // echo "Value from SQL1: " . $valueFromSQL1;
        // echo "Value from SQL2: " . $valueFromSQL2;
      
    
      

        // Perform additional operations based on your requirements
        
        // Assuming you want to send a success message as a response
        $response = array('status' => 'success', 's1' => $s1 , 's2' => $s2,'s3' => $s3 , 's4' => $s4,'s5' => $s5 , 's6' => $s6,'s7' => $s7 , 's8' => $s8);
        echo json_encode($response);
    } else {
        $response = array('status' => 'failure', 'message' => 'Score not received in the request');
        echo json_encode($response);
    }
} else {
    $response = array('status' => 'failure', 'message' => 'Invalid request method');
    echo json_encode($response);
}
?>
