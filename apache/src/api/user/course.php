<?php
    include("worker.php");
    $point = selecter();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale-1.0, user-scalable=0">
    <link rel="shortcut icon" href="../../img/logo_brown.png" type="image/x-icon">
    <link rel="stylesheet" href="../../css/style.css">
    <title>ELAP-course 1</title>
</head>
<body>
    <div class="wrapper">
        <header id="header">
            <img id="logo" src="../../img/logo_brown.png">
            <nav id="navigation">
                <div id="contain">
                    <div class="bar1"></div>
                    <div class="bar2"></div>
                    <div class="bar3"></div>
                </div>
                <ul id="menu">
                    <li class="menu__link"><a href="../../index.html">Главная</a></li>
                    <?php
                        echo '<li class="menu__link"><a href="../../user_profile.php?id=' . $_SESSION['id_user'] . '">Профиль</a></li>';
                    ?>
                    <li class="menu__link"><a href="course.php?course=1">Курс 1</a></li>
                    <li class="menu__link"><a href="course.php?course=2">Курс 2</a></li>
                    <li class="menu__link"><a href="course.php?course=3">Курс 3</a></li>
                    <li class="menu__link"><a href="course.php?course=4">Курс 4</a></li>
                </ul>
            </nav>
        </header>
        <section id="section-1">
            <div class="container">
                <?php
                    echo '<p id="par"> Успеваемость </p> <p id="par">Курс ' . $_GET['course'] . '</p>';
                ?>
                <div class="buttons">
                    <input type="button"  id="btn1" value="Семестр 1">
                    <input type="button"  id="btn2" value="Семестр 2">
                </div>

                

                <div class="table__res">
                    <div class="table__container __active">
                        <table class="table__">
                            <tr class="row__">
                                <th class="head__">Наименование дисциплины</th> 
                                <th class="head__">Вид контроля</th> 
                                <th class="head__">Оценка</th>
                                <th class="head__">Преподаватель</th> 
                            </tr>

                            <?php
                                drawer_term_f($point)
                            ?>
                        </table>
                    </div>



                    <div class="table__container__2">
                        <table class="table__">
                            <tr class="row__">
                                <th class="head__">Наименование дисциплины</th> 
                                <th class="head__">Вид контроля</th> 
                                <th class="head__">Оценка</th>
                                <th class="head__">Преподаватель</th> 
                            </tr>

                            <?php
                                drawer_term_s($point)
                            ?>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <footer>
            2021 © Student MIREA ALL RIGHTS RESERVED Онлайн-университет "Развитие"
        </footer>
    </div>


    <script src="../../js/script.js"></script>
</body>
</html>