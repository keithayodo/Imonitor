<?php
    $con = mysqli_connect("localhost", "brandspe_tms", "cpulga1155", "brandspe_data");
    
    $name = $_POST["name"];
    $age = $_POST["age"];
    $username = $_POST["username"];
    $password = $_POST["password"];
    $national = $_POST["national"];
    $userid = $_POST["userid"];

    $statement = mysqli_prepare($con, "INSERT INTO user (name, age, username, password, national, userid) VALUES (?, ?, ?, ?, ?, ?)");
    mysqli_stmt_bind_param($statement, "sissii", $name, $age, $username, $password, $national, $userid);
    mysqli_stmt_execute($statement);
    
    $response = array();
    $response["success"] = true;  
    
    echo json_encode($response);
?>
