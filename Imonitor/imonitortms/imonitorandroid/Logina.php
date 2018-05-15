<?php
   $con = mysqli_connect("localhost", "brandspe_tms", "cpulga1155", "brandspe_data");
    
    $username = $_POST["username"];
    $password = $_POST["password"];
    
    $statement = mysqli_prepare($con, "SELECT * FROM user WHERE username = ? AND password = ?");
    mysqli_stmt_bind_param($statement, "ss", $username, $password);
    mysqli_stmt_execute($statement);
    
    mysqli_stmt_store_result($statement);
    mysqli_stmt_bind_result($statement,$name, $username, $email, $age, $password, $national);
    
    $response = array();
    $response["success"] = false;  
    
    while(mysqli_stmt_fetch($statement)){
        $response["success"] = true;  
        $response["name"] = $name;
        $response["username"] = $username;
        $response["email"] = $email;
        $response["age"] = $age;        
        $response["password"] = $password;
        $response["national"] = $national;
        
    }
    
    echo json_encode($response);
?>
