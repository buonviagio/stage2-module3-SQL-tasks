SELECT * FROM payment AS pay INNER JOIN paymenttype AS payT ON payT.id = pay.type_id WHERE payT.name='MONTHLY';
SELECT mark.mark FROM mark LEFT JOIN subject ON mark.subject_id = subject.id WHERE subject.name='Art';
SELECT * FROM student JOIN (SELECT student_id FROM payment AS pay INNER JOIN paymenttype AS payT ON payT.id = pay.type_id WHERE payT.name='WEEKLY') AS result ON result.student_id = student.id;
SELECT student.id, student.name, student.birthday, student.groupnumber FROM student  JOIN (SELECT mark.student_id FROM mark LEFT JOIN subject ON mark.subject_id = subject.id WHERE subject.name='MATH') AS result ON result.student_id = student.id;
