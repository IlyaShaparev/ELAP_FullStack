<?php
    session_start();
    
    include("../connect.php");

    $login = $_POST['login'];
    $pass = $_POST['password'];

    $sql = "SELECT * FROM Students WHERE login = '$login'";
    $location = "Location: http://localhost:85/user_profile.php";
    $adm = false;

    if(array_key_exists('admin', $_POST)){
        $sql = "SELECT * FROM Admins WHERE login = '$login'";
        $location = "Location: http://localhost:85/admin_profile.html";
        $adm = true;
    }

    if($result = mysqli_query($connection, $sql)){
        foreach ($result as $row){
            if($row["password"] === $pass){
                if (in_array($row['id'], $row)) {
                    $_SESSION['id_user'] = $row['id'];
                    header("Location: http://localhost:85/user_profile.php?param=" . $row['id']);
                }
                header($location);
            }
        }
        $result->free();
    } else { 
        header("Location: http://localhost:85/bad.html");
    }
    $connection->close();
?>