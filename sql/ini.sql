CREATE DATABASE IF NOT EXISTS `elap_k`;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT,DELETE ON `elap_k`.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE `elap_k`;
CREATE TABLE `Students`(
    `id` VARCHAR(15) NOT NULL,
    `full_name` VARCHAR(30) NOT NULL,
    `login` VARCHAR(25) NOT NULL,
    `password` VARCHAR(12) NOT NULL,
    `email` VARCHAR(80) NOT NULL,
    `phone` VARCHAR(10) NOT NULL,
    `group` VARCHAR(15) NOT NULL,
    `specialization` VARCHAR(50) NOT NULL,
    `date_of_birth` VARCHAR(15) NOT NULL,
    `course` TINYINT NOT NULL,
    `term` TINYINT(1) NOT NULL,
    `sex` VARCHAR(1) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `Disciplines`(
    `id` INTEGER(10) AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    `teacher` VARCHAR(50) NOT NULL,
    `course` TINYINT NOT NULL,
    `term` TINYINT(1) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `Statements`(
    `id` INTEGER(10) AUTO_INCREMENT,
    `id_of_discipline` INTEGER(10) NOT NULL,
    `control` VARCHAR(25) NOT NULL,
    `group` VARCHAR(15) NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY (`id_of_discipline`) REFERENCES `Disciplines` (`id`)
);

CREATE TABLE `Stat2Stud`(
    `id` INTEGER(10) NOT NULL,
    `id_of_student` VARCHAR(15) NOT NULL,
    `id_of_statement` INTEGER(10) NOT NULL,
    `mark` INTEGER(1) NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY (`id_of_student`) REFERENCES `Students` (`id`),
    FOREIGN KEY (`id_of_statement`) REFERENCES `Statements` (`id`)
);

CREATE TABLE `Admins`(
    `id` INT(10) AUTO_INCREMENT,
    `login` VARCHAR(25) NOT NULL,
    `password` VARCHAR(15) NOT NULL,
    PRIMARY KEY(`id`)
);