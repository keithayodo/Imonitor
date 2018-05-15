<?php
    $con = mysqli_connect("localhost", "brandspe_tms", "cpulga1155", "brandspe_data");
    
    $location = $_POST["location"];
    $drink = $_POST["drink"];
    $data = $_POST["data"];
    $userid = $_POST["userid"];
    

    $statement = mysqli_prepare($con, "INSERT INTO collect (location, drink, data, userid) VALUES (?, ?, ?, ?)");
    mysqli_stmt_bind_param($statement, "ssii", $location, $drink, $data, $userid);
    mysqli_stmt_execute($statement);
    
    $response = array();
    $response["success"] = true;  
    
    echo json_encode($response);
?>
