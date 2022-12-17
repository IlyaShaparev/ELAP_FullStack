<?php

    $connection = mysqli_connect("sql", "user", "password", "elap_k");
    if($connection->connect_error){
       die("Ошибка: " . $connection->connect_error);
    }

?>