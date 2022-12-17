USE `elap_k`;

--------------

INSERT INTO `Admins` (login, password)
SELECT * FROM (SELECT 'ilya', '123') AS tmp
WHERE NOT EXISTS (
    SELECT login FROM `Admins` WHERE login = 'ilya' AND password = '123'
) LIMIT 1;

--------------

INSERT INTO `Admins` (login, password)
SELECT * FROM (SELECT 'admin', '234') AS tmp
WHERE NOT EXISTS (
    SELECT login FROM `Admins` WHERE login = 'admin' AND password = '234'
) LIMIT 1;

--------------

INSERT INTO `Admins` (login, password)
SELECT * FROM (SELECT 'adept', '345') AS tmp
WHERE NOT EXISTS (
    SELECT login FROM `Admins` WHERE login = 'adept' AND password = '345'
) LIMIT 1;

--------------

INSERT INTO `Students` (`id`, `full_name`, `login`, `password`, `email`, `phone`, `group`, `specialization`, `date_of_birth`, `course`, `term`, `sex`)
SELECT * FROM (SELECT '20И175', 'Иванов Иван Иванович', 'ivan', 'ivan123', 'ivan@mail.ru', '9253334455', 'ИКБО-01-20', 'Программная инженерия', '01.01.2002', '1', '0', 'm') AS tmp
WHERE NOT EXISTS (
    SELECT `id` FROM `Students` WHERE `id` = '20И175'
) LIMIT 1;

--------------

INSERT INTO `Students` (`id`, `full_name`, `login`, `password`, `email`, `phone`, `group`, `specialization`, `date_of_birth`, `course`, `term`, `sex`)
SELECT * FROM (SELECT '20И153', 'Антонов Антон Антонович', 'anton', 'anton123', 'anton@mail.ru', '9251118899', 'ИКБО-02-19', 'Программная инженерия', '01.01.2001', '2', '0', 'm') AS tmp
WHERE NOT EXISTS (
    SELECT `id` FROM `Students` WHERE `id` = '20И153'
) LIMIT 1;

--------------

INSERT INTO `Students` (`id`, `full_name`, `login`, `password`, `email`, `phone`, `group`, `specialization`, `date_of_birth`, `course`, `term`, `sex`)
SELECT * FROM (SELECT '20И234', 'Цыц Ирина Анатольевна', 'irina', 'irina123', 'irina@mail.ru', '9259997722', 'ИКБО-01-17', 'Программная инженерия', '01.01.1999', '4', '0', 'f') AS tmp
WHERE NOT EXISTS (
    SELECT `id` FROM `Students` WHERE `id` = '20И234'
) LIMIT 1;

--------------

INSERT INTO `Disciplines` VALUES ('1', 'Линейная алгебра', 'Бобров Илларион Владимирович', '1', '0');
INSERT INTO `Disciplines` VALUES ('2', 'Математический анализ', 'Татарин Татар Татарович', '1', '0');
INSERT INTO `Disciplines` VALUES ('3', 'История', 'Медведева Станислава Юлиановна', '1', '0');
INSERT INTO `Disciplines` VALUES ('4', 'Процедурное программирование', 'Князев Александр Николаевич', '1', '0');
INSERT INTO `Disciplines` VALUES ('5', 'Английский язык', 'Пестов Терентий Митрофанович', '1', '0');

INSERT INTO `Disciplines` VALUES ('6', 'Информатика', 'Щербакова Лира Евгеньевна', '1', '1');
INSERT INTO `Disciplines` VALUES ('7', 'Физика', 'Смирнов Семен Семонович', '1', '1');
INSERT INTO `Disciplines` VALUES ('8', 'Математическая логика', 'Селезнёва Камилла Давидовна', '1', '1');
INSERT INTO `Disciplines` VALUES ('9', 'ООП', 'Федосеев Нисон Кимович', '1', '1');
INSERT INTO `Disciplines` VALUES ('10', 'Математическаий анализ', 'Татарин Татар Татарович', '1', '1');

--------------

INSERT INTO `Disciplines` VALUES ('11', 'Право', 'Егорова Арьяна Семеновна', '2', '0');
INSERT INTO `Disciplines` VALUES ('12', 'Вычислительная математика', 'Петухов Артем Георгьевич', '2', '0');
INSERT INTO `Disciplines` VALUES ('13', 'Физическая культура', 'Сорокин Георгий Павлович', '2', '0');
INSERT INTO `Disciplines` VALUES ('14', 'Конфигурационное управление', 'Кононов Филипп Гордеевич', '2', '0');
INSERT INTO `Disciplines` VALUES ('15', 'СиАОД', 'Самойлов Овидий Натанович', '2', '0');

INSERT INTO `Disciplines` VALUES ('16', 'СиАОД', 'Самойлов Овидий Натанович', '2', '1');
INSERT INTO `Disciplines` VALUES ('17', 'Физическая культура', 'Сорокин Георгий Павлович', '2', '1');
INSERT INTO `Disciplines` VALUES ('18', 'Математический анализ', 'Татарин Татар Татарович', '2', '1');
INSERT INTO `Disciplines` VALUES ('19', 'Вычислительная математика', 'Петухов Артем Георгьевич', '2', '1');
INSERT INTO `Disciplines` VALUES ('20', 'Инсотранный язык', 'Тарасова Иветта Фроловна', '2', '1');

--------------

INSERT INTO `Disciplines` VALUES ('21', 'Разработка КЧ интернет ресурсов', 'Полякова София Сергеевна', '3', '0');
INSERT INTO `Disciplines` VALUES ('22', 'Проектирование Баз Данных', 'Осипова Анастасия Дамировна', '3', '0');
INSERT INTO `Disciplines` VALUES ('23', 'Анализ и концептуальное моделирование систем', 'Фомина Виктория Романовна', '3', '0');
INSERT INTO `Disciplines` VALUES ('24', 'Программирование на языке Джава', 'Сычев Степан Михайлович', '3', '0');
INSERT INTO `Disciplines` VALUES ('25', 'Инсотранный язык', 'Лобанов Михаил Дмитриевич', '3', '0');

INSERT INTO `Disciplines` VALUES ('26', 'Разработка СЧ интернет ресурсов', 'Малышев Егор Тимофеевич', '3', '1');
INSERT INTO `Disciplines` VALUES ('27', 'Разработка Баз Данных', 'Греков Фёдор Ярославович', '3', '1');
INSERT INTO `Disciplines` VALUES ('28', 'Моделирование AR & VR', 'Исаева Алиса Артуровна', '3', '1');
INSERT INTO `Disciplines` VALUES ('29', 'Программирование на языке Python', 'Самсонов Егор Ильич', '3', '1');
INSERT INTO `Disciplines` VALUES ('30', 'Технология разработки ПО', 'Михайлова Дарья Михайловна', '3', '1');

--------------

INSERT INTO `Disciplines` VALUES ('31', 'Моделирование бизнес-процессов', 'Смирнова Вероника Николаевна', '4', '0');
INSERT INTO `Disciplines` VALUES ('32', 'IOT', 'Сергеев Лев Макарович', '4', '0');
INSERT INTO `Disciplines` VALUES ('33', 'Введение в ML', 'Свиридов Матвей Владимирович', '4', '0');
INSERT INTO `Disciplines` VALUES ('34', 'Программирование на языке С++', 'Щербакова Яна Александровна', '4', '0');
INSERT INTO `Disciplines` VALUES ('35', 'Тестирование ПО', 'Комарова Ксения Романовна', '4', '0');

INSERT INTO `Disciplines` VALUES ('36', 'Разработка клиент-серверных приложений', 'Балашова Алиса Никитична', '4', '1');
INSERT INTO `Disciplines` VALUES ('37', 'Технология интелекутальной обработки данных', 'Агафонов Владислав Максимович', '4', '1');
INSERT INTO `Disciplines` VALUES ('38', 'Программирование микроконтроллеров', 'Соколов Алексей Львович', '4', '1');
INSERT INTO `Disciplines` VALUES ('39', 'Программирование на языке С#', 'Корнеев Михаил Максимович', '4', '1');
INSERT INTO `Disciplines` VALUES ('40', 'Разработка ПО', 'Копылова Маргарита Максимовна', '4', '1');

--------------

INSERT INTO `Statements` VALUES ('1', '1', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('2', '2', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('3', '3', 'Зачет', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('4', '4', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('5', '5', 'Зачет', 'ИКБО-01-17');

INSERT INTO `Statements` VALUES ('6', '6', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('7', '7', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('8', '8', 'Зачет', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('9', '9', 'Курсовая работа', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('10', '10', 'Зачет', 'ИКБО-01-17');

INSERT INTO `Statements` VALUES ('11', '11', 'Зачет', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('12', '12', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('13', '13', 'Зачет', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('14', '14', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('15', '15', 'Экзамен', 'ИКБО-01-17');

INSERT INTO `Statements` VALUES ('16', '16', 'Курсовая работа', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('17', '17', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('18', '18', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('19', '19', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('20', '20', 'Зачет', 'ИКБО-01-17');

INSERT INTO `Statements` VALUES ('21', '21', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('22', '22', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('23', '23', 'Зачет', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('24', '24', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('25', '25', 'Зачет', 'ИКБО-01-17');

INSERT INTO `Statements` VALUES ('26', '26', 'Курсовая работа', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('27', '27', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('28', '28', 'Зачет', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('29', '29', 'Зачет', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('30', '30', 'Экзамен', 'ИКБО-01-17');

INSERT INTO `Statements` VALUES ('31', '31', 'Зачет', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('32', '32', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('33', '33', 'Зачет', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('34', '34', 'Экзамен', 'ИКБО-01-17');
INSERT INTO `Statements` VALUES ('35', '35', 'Экзамен', 'ИКБО-01-17');

--------------

INSERT INTO `Statements` VALUES ('41', '1', 'Экзамен', 'ИКБО-02-19');
INSERT INTO `Statements` VALUES ('42', '2', 'Экзамен', 'ИКБО-02-19');
INSERT INTO `Statements` VALUES ('43', '3', 'Зачет', 'ИКБО-02-19');
INSERT INTO `Statements` VALUES ('44', '4', 'Экзамен', 'ИКБО-02-19');
INSERT INTO `Statements` VALUES ('45', '5', 'Зачет', 'ИКБО-02-19');

INSERT INTO `Statements` VALUES ('46', '6', 'Экзамен', 'ИКБО-02-19');
INSERT INTO `Statements` VALUES ('47', '7', 'Экзамен', 'ИКБО-02-19');
INSERT INTO `Statements` VALUES ('48', '8', 'Зачет', 'ИКБО-02-19');
INSERT INTO `Statements` VALUES ('49', '9', 'Курсовая работа', 'ИКБО-02-19');
INSERT INTO `Statements` VALUES ('50', '10', 'Зачет', 'ИКБО-02-19');

INSERT INTO `Statements` VALUES ('51', '11', 'Зачет', 'ИКБО-02-19');
INSERT INTO `Statements` VALUES ('52', '12', 'Экзамен', 'ИКБО-02-19');
INSERT INTO `Statements` VALUES ('53', '13', 'Зачет', 'ИКБО-02-19');
INSERT INTO `Statements` VALUES ('54', '14', 'Экзамен', 'ИКБО-02-19');
INSERT INTO `Statements` VALUES ('55', '15', 'Экзамен', 'ИКБО-02-19');

--------------

INSERT INTO `Statements` VALUES ('56', '1', 'Экзамен', 'ИКБО-01-20');
INSERT INTO `Statements` VALUES ('57', '2', 'Экзамен', 'ИКБО-01-20');
INSERT INTO `Statements` VALUES ('58', '3', 'Зачет', 'ИКБО-01-20');
INSERT INTO `Statements` VALUES ('59', '4', 'Экзамен', 'ИКБО-01-20');
INSERT INTO `Statements` VALUES ('60', '5', 'Зачет', 'ИКБО-01-20');

--------------

INSERT INTO `Stat2Stud` VALUES ('1', '20И234', '1', '5');
INSERT INTO `Stat2Stud` VALUES ('2', '20И234', '2', '3');
INSERT INTO `Stat2Stud` VALUES ('3', '20И234', '3', '1');
INSERT INTO `Stat2Stud` VALUES ('4', '20И234', '4', '4');
INSERT INTO `Stat2Stud` VALUES ('5', '20И234', '5', '1');

INSERT INTO `Stat2Stud` VALUES ('6', '20И234', '6', '3');
INSERT INTO `Stat2Stud` VALUES ('7', '20И234', '7', '3');
INSERT INTO `Stat2Stud` VALUES ('8', '20И234', '8', '1');
INSERT INTO `Stat2Stud` VALUES ('9', '20И234', '9', '5');
INSERT INTO `Stat2Stud` VALUES ('10', '20И234', '10', '1');

INSERT INTO `Stat2Stud` VALUES ('11', '20И234', '11', '1');
INSERT INTO `Stat2Stud` VALUES ('12', '20И234', '12', '5');
INSERT INTO `Stat2Stud` VALUES ('13', '20И234', '13', '1');
INSERT INTO `Stat2Stud` VALUES ('14', '20И234', '14', '4');
INSERT INTO `Stat2Stud` VALUES ('15', '20И234', '15', '5');

INSERT INTO `Stat2Stud` VALUES ('16', '20И234', '16', '3');
INSERT INTO `Stat2Stud` VALUES ('17', '20И234', '17', '3');
INSERT INTO `Stat2Stud` VALUES ('18', '20И234', '18', '3');
INSERT INTO `Stat2Stud` VALUES ('19', '20И234', '19', '5');
INSERT INTO `Stat2Stud` VALUES ('20', '20И234', '20', '1');

INSERT INTO `Stat2Stud` VALUES ('21', '20И234', '21', '4');
INSERT INTO `Stat2Stud` VALUES ('22', '20И234', '22', '3');
INSERT INTO `Stat2Stud` VALUES ('23', '20И234', '23', '1');
INSERT INTO `Stat2Stud` VALUES ('24', '20И234', '24', '5');
INSERT INTO `Stat2Stud` VALUES ('25', '20И234', '25', '1');

INSERT INTO `Stat2Stud` VALUES ('26', '20И234', '26', '5');
INSERT INTO `Stat2Stud` VALUES ('27', '20И234', '27', '4');
INSERT INTO `Stat2Stud` VALUES ('28', '20И234', '28', '1');
INSERT INTO `Stat2Stud` VALUES ('29', '20И234', '29', '1');
INSERT INTO `Stat2Stud` VALUES ('30', '20И234', '30', '5');

INSERT INTO `Stat2Stud` VALUES ('31', '20И234', '31', '1');
INSERT INTO `Stat2Stud` VALUES ('32', '20И234', '32', '5');
INSERT INTO `Stat2Stud` VALUES ('33', '20И234', '33', '1');
INSERT INTO `Stat2Stud` VALUES ('34', '20И234', '34', '5');
INSERT INTO `Stat2Stud` VALUES ('35', '20И234', '35', '5');

--------------

INSERT INTO `Stat2Stud` VALUES ('41', '20И153', '41', '3');
INSERT INTO `Stat2Stud` VALUES ('42', '20И153', '42', '4');
INSERT INTO `Stat2Stud` VALUES ('43', '20И153', '43', '1');
INSERT INTO `Stat2Stud` VALUES ('44', '20И153', '44', '3');
INSERT INTO `Stat2Stud` VALUES ('45', '20И153', '45', '1');

INSERT INTO `Stat2Stud` VALUES ('46', '20И153', '46', '5');
INSERT INTO `Stat2Stud` VALUES ('47', '20И153', '47', '5');
INSERT INTO `Stat2Stud` VALUES ('48', '20И153', '48', '1');
INSERT INTO `Stat2Stud` VALUES ('49', '20И153', '49', '3');
INSERT INTO `Stat2Stud` VALUES ('50', '20И153', '50', '1');

INSERT INTO `Stat2Stud` VALUES ('51', '20И153', '51', '1');
INSERT INTO `Stat2Stud` VALUES ('52', '20И153', '52', '4');
INSERT INTO `Stat2Stud` VALUES ('53', '20И153', '53', '1');
INSERT INTO `Stat2Stud` VALUES ('54', '20И153', '54', '5');
INSERT INTO `Stat2Stud` VALUES ('55', '20И153', '55', '3');

--------------

INSERT INTO `Stat2Stud` VALUES ('56', '20И175', '56', '5');
INSERT INTO `Stat2Stud` VALUES ('57', '20И175', '57', '5');
INSERT INTO `Stat2Stud` VALUES ('58', '20И175', '58', '1');
INSERT INTO `Stat2Stud` VALUES ('59', '20И175', '59', '5');
INSERT INTO `Stat2Stud` VALUES ('60', '20И175', '60', '1');
