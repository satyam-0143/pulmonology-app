<?php
if (isset($_POST['username']) && isset($_POST['password'])) {
    require_once "conn.php";
    require_once "validate.php";
    $id = validate($_POST['username']);       // Change _POST to $_POST
    $password = validate($_POST['password']);  // Change _POST to $_POST
    $sql = "SELECT * FROM login WHERE id = '$username' AND password = '$password'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        echo "success";  // Corrected "sucess" to "success"
    } else {
        echo "failure";
    }
}
?>
