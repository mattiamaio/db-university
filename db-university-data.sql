INSERT INTO `departments` (`name`, `address`, `email`, `website`, `head_of_department`) VALUES ('Dipartimento di Linguistica', 'Via Dai Mille 33 Milano', 'linguistica@unimi.it', 'www.unimi.it', 'Max Verstappen');
DELETE FROM `departments` WHERE `id` = 1;

INSERT INTO `degrees` (`name`, `address`, `level`) VALUES ('Lingue straniere', 'Via Carli 29 Milano', 'Magistrale');
INSERT INTO `courses` (`name`, `website`, `cfu`) VALUES ('Introduzione a Francese', 'www.unimi.it/linguistica/francese', '4');
UPDATE `degrees` SET `departments_id`= '2' WHERE `id` = 1;
UPDATE `courses` SET `degrees_id` = '1' WHERE `id` = 1;
INSERT INTO `teachers` (`name`, `surname`, `email`) VALUES ('Ermenegildo', 'Sacchi', 'e.sacchi@unimi.it');
INSERT INTO `student` (`name`, `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`, `degrees_id`) VALUES ('Christian', 'Horner', '1992-11-23', 'CHSHRN92H11B991A', '2019-07-12', '20023', 'c.horner@gmail.com', '1');
INSERT INTO `exams`(`date`, `hour`, `location`, `address`, `courses_id`) VALUES ('2021-12-12', '10:30', 'Aula di Francese', 'Via Franchi 26 Milano', '1');
INSERT INTO `vote` (`student_id`, `exams_id`, `vote`) VALUES ('1', '1', '18');