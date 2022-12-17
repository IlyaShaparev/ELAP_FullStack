<?php
    function delete($sql){
        include("../../connect.php");  
        $result = mysqli_query($connection, $sql);
    }
?>