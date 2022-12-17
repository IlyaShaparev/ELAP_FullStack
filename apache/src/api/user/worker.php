<?php
    session_start();

    function drawer_term_f($point){
        if ($point[1]){
            for ($i = 0; $i < 5; $i++) {
                echo '<tr class="row__">';
                echo '<td class="cell__">' . $point[2][$i] . '</td> <td class="cell__">' . $point[3][$i] . '</td> <td class="cell__">' . translater($point[4][$i]) . '</td><td class="cell__">' . $point[5][$i] . '</td>';
                echo '</tr>';
            }
        }
        else {
            for ($i = 0; $i < 5; $i++) {
                echo '<tr class="row__">';
                echo '<td class="cell__">' . $point[2][$i] . '</td> <td class="cell__"> - </td> <td class="cell__"> - </td><td class="cell__">' . $point[5][$i] . '</td>';
                echo '</tr>';
            }
        }
    }


    function drawer_term_s($point){
        if ($point[0] && $point[1]){
            for ($i = 5; $i < 10; $i++) {
                echo '<tr class="row__">';
                echo '<td class="cell__">' . $point[2][$i] . '</td> <td class="cell__">' . $point[3][$i] . '</td> <td class="cell__">' . translater($point[4][$i]) . '</td><td class="cell__">' . $point[5][$i] . '</td>';
                echo '</tr>';
            }
        }
        else {
            for ($i = 5; $i < 10; $i++) {
                echo '<tr class="row__">';
                echo '<td class="cell__">' . $point[2][$i] . '</td> <td class="cell__"> - </td> <td class="cell__"> - </td><td class="cell__">' . $point[5][$i] . '</td>';
                echo '</tr>';
            }
        }
    }

    function switcher($var_1, $var_2){
        if ($var_1 > $var_2){
            return false;
        }
        return true;
    }

    function translater($number){
        switch ($number) {
            case 5:
                return "Отлично";
            case 4:
                return "Хорошо";
            case 3:
                return "Удовлетворительно";
                break;
            case 1:
                return "Зачтено";
        }
    }

    function selecter(){
        $id_user = $_SESSION['id_user'];
        $course = $_GET['course'];
        include("../../connect.php");
        $sql_0 = "SELECT `course`, `group` FROM `Students` WHERE `id` = '$id_user';";
        $result_0 = $connection->query($sql_0);
        foreach ($result_0 as $row){
            $user_group = $row['group'];
            $user_course = $row['course'];
        }

        $sql_1 = "SELECT `id`, `name`, `teacher`, `term` FROM `Disciplines` WHERE `course` = '{$course}';";
        $result_1 = $connection->query($sql_1);
        $id_d = [];
        $names_disciplines = [];
        $teachers = [];
        $termes = [];
        foreach ($result_1 as $row){
            array_push($id_d, $row['id']);
            array_push($names_disciplines, $row['name']);
            array_push($teachers, $row['teacher']);
            array_push($termes, $row['term']);
        }

        $sql_2 = "SELECT `id`, `id_of_discipline`, `control` FROM `Statements` WHERE `group` = '{$user_group}';";
        $result_1 = $connection->query($sql_2);
        $ides = [];
        $ides_disciplines = [];
        $controls_disciplines = [];
        foreach ($result_1 as $row){
            if (in_array($row['id_of_discipline'], $id_d)){
                array_push($ides, $row['id']);
                array_push($ides_disciplines, $row['id_of_discipline']);
                array_push($controls_disciplines, $row['control']);
            }
        }

        $marks = [];
        $sql_3 = "SELECT `id_of_statement`, `mark` FROM `Stat2Stud` WHERE `id_of_student` = '{$id_user}';";
        $result_3 = $connection->query($sql_3);

        foreach ($result_3 as $row){
            if (in_array($row['id_of_statement'], $ides)){
                array_push($marks, $row['mark']);
            }
        }

        $err = switcher(count($id_d), count($ides));
        $course_err = switcher($course, $user_course);
        return [$err, $course_err, $names_disciplines, $controls_disciplines, $marks, $teachers];
    }
?>