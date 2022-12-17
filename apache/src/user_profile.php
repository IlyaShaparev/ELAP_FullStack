<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale-1.0, user-scalable=0">
    <link rel="shortcut icon" href="img/logo_brown.png" type="image/x-icon">
    <link rel="stylesheet" href="css/switch.css">
    <title>ELAP-profile</title>
</head>
<body>
    <div class="wrapper">
        <header id="header">
            <img id="logo" src="img/logo_brown.png">
            <nav id="navigation">
                <div id="contain">
                    <div class="bar1"></div>
                    <div class="bar2"></div>
                    <div class="bar3"></div>
                </div>
                <ul id="menu">
                    <li class="menu__link"><a href="index.html">Главная</a></li>
                    <li class="menu__link"><a href="#">Профиль</a></li>
                    <li class="menu__link"><a href="api/user/course.php?course=1">Курс 1</a></li>
                    <li class="menu__link"><a href="api/user/course.php?course=2">Курс 2</a></li>
                    <li class="menu__link"><a href="api/user/course.php?course=3">Курс 3</a></li>
                    <li class="menu__link"><a href="api/user/course.php?course=4">Курс 4</a></li>
                </ul>
            </nav>
        </header>
        <section id="section-1">
            <?php
                echo '<p class="text"> ' . date("Сегодня d.m.Y") . ' </p>';
            ?>

            <div class="container_">
                <div class="content-container_">
                    <?php
                        
                        include("connect.php");
                        $id = $_SESSION['id_user'];
                        $sql = "SELECT * FROM Students WHERE id = '{$id}';";
                        $result = $connection->query($sql);
                        $connection->close();
                        if ($result->num_rows === 1) {
                            foreach ($result as $data){
                                if ($data['sex'] == 'm'){
                                    echo '<img src="img/profile_user.png" id="profile">';
                                }
                                else {
                                    echo '<img src="img/woman.png" id="profile">';
                                } 
                                echo '<p id="name"> <span>' . $data['full_name'] . ' </span> </p>';
                                echo '<p id="email"> Почта: ' . $data['email'] . ' </p>';
                                echo '<p id="date"> Год рождения: ' . $data['date_of_birth'] . ' </p>';
                            }
                        }
                    ?>
                </div>
                <div class="line"> </div>
                <div class="content-container_">
                    <div class="group">
                        <?php
                            echo "<p> Группа: <span>" . $data['group'] . "</span> </p>";
                        ?>
                        <!-- <p> Группа: <span>ЖФ-05</span> </p> -->
                    </div>
                    <div class="number">
                        <?php
                            echo "<p> Личный номер: <span>" . $data['id'] . "</span> </p>";
                        ?>
                        <!-- <p> Личный номер: <span>1337ПУ322</span> </p> -->
                    </div>
                    <div class="course">
                        <?php
                            echo "<p> Курс: <span> " . $data['course'] . " </span> </p>";
                        ?>
                        <!-- <p> Курс: <span> 3 </span> </p> -->
                    </div>
                </div>
            </div>
        </section>
        <footer>
            2021 © Student MIREA ALL RIGHTS RESERVED Онлайн-университет "Развитие"
        </footer>
        <script src="js/script.js"></script>
    </body>
</html>