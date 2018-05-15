<?php

$name = $_POST ["name"];
$image = $_POST["image"];

$decodeImage = base64_decode("$image");

file_put_contents("pictures/". $name . ".JPG", $decodedImage);


?>