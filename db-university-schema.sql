CREATE DATABASE `db-university-tables`;
USE `db-university-tables`;

CREATE TABLE `departments` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`address` VARCHAR(255),
	`phone` INT,
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

-- tabella ponte
CREATE TABLE `courses_teachers`(
	`courses_id` INT NOT NULL,
	`teachers_id` INT NOT NULL,
	PRIMARY KEY (`courses_id`,`teachers_id`),
	FOREIGN KEY (`courses_id`) REFERENCES courses(`id`),
	FOREIGN KEY (`teachers_id`) REFERENCES teachers (`id`)
);

CREATE TABLE `student`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`surname` VARCHAR(100) NOT NULL,
	`date_of_birth` DATE NOT NULL,
	`fiscal_code` CHAR(16) NOT NULL,
	`enrolment_date` DATE NOT NULL,
	`registration_number` INT NOT NULL,
	`email` VARCHAR(100) NOT NULL,
	`degrees_id` INT,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`degrees_id`) REFERENCES degrees (`id`)
);

CREATE TABLE `exams`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`date` DATE NOT NULL,
	`hour` TIME NOT NULL,
	`location` VARCHAR(255) NOT NULL,
	`address` VARCHAR(255) NOT NULL,
	`courses_id` INT,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`courses_id`) REFERENCES courses (`id`)
);

CREATE TABLE `vote` (
	`student_id` INT NOT NULL,
	`exams_id` INT NOT NULL,
	`vote` INT NOT NULL,
	PRIMARY KEY (`student_id` ,`exams_id`),
	FOREIGN KEY (`student_id`) REFERENCES student (`id`),
	FOREIGN KEY (`exams_id`) REFERENCES exams (`id`)
);
