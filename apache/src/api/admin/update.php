<?php
    function update($sql){
        include("../../connect.php");  
        $result = mysqli_query($connection, $sql);
    }
?>