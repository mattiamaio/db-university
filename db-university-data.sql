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

INSERT INTO `departments` (`name`, `address`, `email`, `website`, `head_of_department`) VALUES ('Dipartimento di Ingegneria', 'Via Verdi 21 Milano', 'ingegneria@unimi.it', 'www.unimi.it/ingegneria', 'Mauro Pennini');
INSERT INTO `degrees` (`name`, `address`, `level`, `departments_id`) VALUES ('Ingegneria Gestionale', 'Via Rizzo 29 Milano', 'Triennale', '3');
INSERT INTO `courses` (`name`, `website`, `cfu`, `degrees_id`) VALUES ('Analisi 1', 'www.unimi.it/inggest/analisi', '6', '2');
INSERT INTO `teachers` (`name`, `surname`, `email`) VALUES ('Michael', 'Masi', 'm.masi@unimi.it');
INSERT INTO `student` (`name`, `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`, `degrees_id`) VALUES ('Toto', 'Wolff', '1994-07-11', 'TTOWFF94H11B661C', '2020-06-06', '23258', 't.wolff@gmail.com', '2');
INSERT INTO `exams`(`date`, `hour`, `location`, `address`, `courses_id`) VALUES ('2021-12-08', '08:30', 'Aula di Analisi', 'Via Del Corso 11 Milano', '2');
INSERT INTO `vote` (`student_id`, `exams_id`, `vote`) VALUES ('2', '2', '28');