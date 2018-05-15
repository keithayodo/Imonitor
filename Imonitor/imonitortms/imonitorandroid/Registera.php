<?php
    $con = mysqli_connect("localhost", "brandspe_tms", "cpulga1155", "brandspe_data");
    
    $name = $_POST["name"];
    $age = $_POST["age"];
    $username = $_POST["username"];
    $password = $_POST["password"];
    $national = $_POST["national"];
    $email = $_POST["email"];

    $statement = mysqli_prepare($con, "INSERT INTO user (name, username, email, age, password, national) VALUES (?, ?, ?, ?, ?, ?)");
    mysqli_stmt_bind_param($statement, "sssisi", $name, $username, $email, $age, $password, $national);
    mysqli_stmt_execute($statement);
    
    $response = array();
    $response["success"] = true;  
    
    echo json_encode($response);
?>
