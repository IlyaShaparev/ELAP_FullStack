<?php
    function select($sql){
        include("../../connect.php");
        
        $result = mysqli_query($connection, $sql);
        $answer = [];
        foreach ($result as $row){
            array_push($answer, $row);
        }
        return $answer;
    }

    function drawer($answer){
        foreach ($answer as $row){
            $count = count($row);
            echo '<tr>';
            foreach ($row as $cell){
                echo '<td>' . $cell . '</td>';
            }
            echo '</tr>';
        }
    }
?>