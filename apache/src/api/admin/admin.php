<?php
    session_start();
    $sql = $_POST['text'];
    $method = explode(" ", $sql)[0];
    $_SESSION['sql'] = $sql;

    switch ($method){
        case "SELECT":
            header("Location: http://localhost:85/api/admin/allright_select.php");
            break;
        case "DELETE":
            header("Location: http://localhost:85/api/admin/allright.php?param=delete");
            break;
        case "UPDATE":
            header("Location: http://localhost:85/api/admin/allright.php?param=update");
            break;
        case "INSERT":
            header("Location: http://localhost:85/api/admin/allright.php?param=insert");
            break;
        default:
            header("Location: http://localhost:85/api/admin/allright.php?param=insert");
            break;
    }
?>
