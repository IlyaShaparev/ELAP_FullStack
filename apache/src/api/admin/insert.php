<?php
    function insert($sql){
        include("../../connect.php");  
        $result = mysqli_query($connection, $sql);
    }
?>