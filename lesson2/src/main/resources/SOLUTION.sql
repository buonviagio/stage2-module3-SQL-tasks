INSERT INTO student (name, groupnumber, birthday) VALUES ('John', 1, '1957-10-18');
INSERT INTO student (name, groupnumber, birthday) VALUES ('Chris', 1, '1951-12-23');
INSERT INTO student (name, groupnumber, birthday) VALUES ('Carl', 1, '1968-04-19');
INSERT INTO student (name, groupnumber, birthday) VALUES ('Oliver', 2, '2001-04-21');
INSERT INTO student (name, groupnumber, birthday) VALUES ('James', 2, '2003-05-30');
INSERT INTO student (name, groupnumber, birthday) VALUES ('Lucas', 2, '2005-10-04');
INSERT INTO student (name, groupnumber, birthday) VALUES ('Henry', 2, '2000-12-06');
INSERT INTO student (name, groupnumber, birthday) VALUES ('Jacob', 3, '1998-02-22');
INSERT INTO student (name, groupnumber, birthday) VALUES ('Logan', 3, '2001-12-12');
INSERT INTO student (name, groupnumber, birthday) VALUES ('Manuel', 4, '1995-10-02');
INSERT INTO student (name, groupnumber, birthday) VALUES ('Petya', 4, '1990-11-05');
INSERT INTO student (name, groupnumber, birthday) VALUES ('Edgard', 4, '1987-11-13');
INSERT INTO student (name, groupnumber, birthday) VALUES ('Christian', 5, '1987-02-02');
INSERT INTO student (name, groupnumber, birthday) VALUES ('Dima', 5, '1987-10-16');

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

INSERT INTO paymenttype (name) VALUES ('DAILY');
INSERT INTO paymenttype (name) VALUES ('WEEKLY');
INSERT INTO paymenttype (name) VALUES ('MONTHLY');

INSERT INTO payment (student_id, type_id, amount, payment_date) VALUES ((SELECT id from student WHERE name = 'John'), (SELECT id from paymenttype WHERE name = 'WEEKLY'), 500, '2019-01-30 22:56:52');
INSERT INTO payment (student_id, type_id, amount, payment_date) VALUES ((SELECT id from student WHERE name = 'Oliver'), (SELECT id from paymenttype WHERE name = 'MONTHLY'), 2000, '2020-01-30 22:56:52');
INSERT INTO payment (student_id, type_id, amount, payment_date) VALUES ((SELECT id from student WHERE name = 'Henry'), (SELECT id from paymenttype WHERE name = 'WEEKLY'), 1500, '2019-01-30 22:56:52');
INSERT INTO payment (student_id, type_id, amount, payment_date) VALUES ((SELECT id from student WHERE name = 'James'), (SELECT id from paymenttype WHERE name = 'DAILY'), 400, '2021-01-30 22:56:52');
INSERT INTO payment (student_id, type_id, amount, payment_date) VALUES ((SELECT id from student WHERE name = 'Logan'), (SELECT id from paymenttype WHERE name = 'MONTHLY'), 1900, '2019-01-30 22:56:52');
INSERT INTO payment (student_id, type_id, amount, payment_date) VALUES ((SELECT id from student WHERE name = 'Dima'), (SELECT id from paymenttype WHERE name = 'WEEKLY'), 1500, '2019-01-30 22:56:52');
INSERT INTO payment (student_id, type_id, amount, payment_date) VALUES ((SELECT id from student WHERE name = 'Jacob'), (SELECT id from paymenttype WHERE name = 'DAILY'), 200, '2020-01-30 22:56:52');

INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Chris'), (SELECT id from subject WHERE name = 'Art'), 8);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Oliver'), (SELECT id from subject WHERE name = 'History'), 5);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'James'), (SELECT id from subject WHERE name = 'Geography'), 9);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Jacob'), (SELECT id from subject WHERE name = 'Math'), 4);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Logan'), (SELECT id from subject WHERE name = 'PE'), 9);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Lucas'), (SELECT id from subject WHERE name = 'Art'), 9);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Petya'), (SELECT id from subject WHERE name = 'German'), 7);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Logan'), (SELECT id from subject WHERE name = 'English'), 8);
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id from student WHERE name = 'Dima'), (SELECT id from subject WHERE name = 'Math'), 9);