CREATE DATABASE `db-university-tables`;
USE `db-university-tables`;

CREATE TABLE `departments` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`address` VARCHAR(255),
	`phone` INT(20),
	`email` VARCHAR(100),
	`website` VARCHAR (255),
	`head_of_department` VARCHAR(100),
	PRIMARY KEY (`id`)
);

CREATE TABLE `degrees` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`address` VARCHAR(255),
	`email` VARCHAR(100),
	`website` VARCHAR(255),
	`level` VARCHAR(100),
	`departments_id` INT,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`departments_id`) REFERENCES departments(`id`)
);

CREATE TABLE `courses` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`description` TEXT,
	`website` VARCHAR(255),
	`cfu` INT NOT NULL,
	`degrees_id` INT,
	PRIMARY KEY (`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES degrees (`id`)
);

CREATE TABLE `teachers`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`surname` VARCHAR(100) NOT NULL,
	`phone` INT,
	`email` VARCHAR(100),
	`office_address` VARCHAR(255),
	PRIMARY KEY (`id`)
);

CREATE TABLE `courses_teachers`(
	`courses_id` INT NOT NULL,
	`teachers_id` INT NOT NULL,
	PRIMARY KEY (`courses_id`,`teachers_id`),
	FOREIGN KEY (`courses_id`) REFERENCES courses(`id`),
	FOREIGN KEY (`teachers_id`) REFERENCES teachers (`id`)
);