INSERT INTO student (name, group_number) VALUES ('John', 1);
INSERT INTO student (name, group_number) VALUES ('Chris', 1);
INSERT INTO student (name, group_number) VALUES ('Carl', 1);
INSERT INTO student (name, group_number) VALUES ('Oliver', 2);
INSERT INTO student (name, group_number) VALUES ('James', 2);
INSERT INTO student (name, group_number) VALUES ('Lucas', 2);
INSERT INTO student (name, group_number) VALUES ('Henry', 2);
INSERT INTO student (name, group_number) VALUES ('Jacob', 3);
INSERT INTO student (name, group_number) VALUES ('Logan', 3);
INSERT INTO student (name, group_number) VALUES ('Manuel', 4);
INSERT INTO student (name, group_number) VALUES ('Petya', 4);
INSERT INTO student (name, group_number) VALUES ('Edgard', 4);
INSERT INTO student (name, group_number) VALUES ('Christian', 5);
INSERT INTO student (name, group_number) VALUES ('Dima', 5);

INSERT INTO subject (name, grade) VALUES ('Art', 1);
INSERT INTO subject (name, grade) VALUES ('Music', 1);
INSERT INTO subject (name, grade) VALUES ('Geography', 2);
INSERT INTO subject (name, grade) VALUES ('History', 2);
INSERT INTO subject (name, grade) VALUES ('PE', 3);
INSERT INTO subject (name, grade) VALUES ('Math', 3);
INSERT INTO subject (name, grade) VALUES ('Science', 4);
INSERT INTO subject (name, grade) VALUES ('IT', 4);
INSERT INTO subject (name, grade) VALUES ('English', 5);
INSERT INTO subject (name, grade) VALUES ('German', 5);

INSERT INTO paymentType (name) VALUES ('DAILY');
INSERT INTO paymentType (name) VALUES ('WEEKLY');
INSERT INTO paymentType (name) VALUES ('MONTHLY');

INSERT INTO payment (student_id, type_id) VALUES ((SELECT id from student WHERE name = 'John'), (SELECT id from paymentType WHERE name = 'WEEKLY'));
INSERT INTO payment (student_id, type_id) VALUES ((SELECT id from student WHERE name = 'Oliver'), (SELECT id from paymentType WHERE name = 'MONTHLY'));
INSERT INTO payment (student_id, type_id) VALUES ((SELECT id from student WHERE name = 'Henry'), (SELECT id from paymentType WHERE name = 'WEEKLY'));
INSERT INTO payment (student_id, type_id) VALUES ((SELECT id from student WHERE name = 'James'), (SELECT id from paymentType WHERE name = 'DAILY'));
INSERT INTO payment (student_id, type_id) VALUES ((SELECT id from student WHERE name = 'Logan'), (SELECT id from paymentType WHERE name = 'MONTHLY'));
INSERT INTO payment (student_id, type_id) VALUES ((SELECT id from student WHERE name = 'Dima'), (SELECT id from paymentType WHERE name = 'WEEKLY'));
INSERT INTO payment (student_id, type_id) VALUES ((SELECT id from student WHERE name = 'Jacob'), (SELECT id from paymentType WHERE name = 'DAILY'));

INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Chris'), (SELECT id from subject WHERE name = 'Art'), 8);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Oliver'), (SELECT id from subject WHERE name = 'History'), 5);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'James'), (SELECT id from subject WHERE name = 'Geography'), 9);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Jacob'), (SELECT id from subject WHERE name = 'Math'), 4);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Logan'), (SELECT id from subject WHERE name = 'PE'), 9);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Lucas'), (SELECT id from subject WHERE name = 'Art'), 9);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Petya'), (SELECT id from subject WHERE name = 'German'), 7);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Logan'), (SELECT id from subject WHERE name = 'English'), 8);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Dima'), (SELECT id from subject WHERE name = 'Math'), 9);