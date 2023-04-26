SELECT mark FROM mark WHERE mark > 6 ORDER BY mark DESC;
SELECT amount FROM payment WHERE amount < 300 ORDER BY amount ASC;
SELECT name FROM paymenttype ORDER BY name ASC;
SELECT * FROM student ORDER BY name DESC;
SELECT * FROM (SELECT student.name, student.birthday, payment.amount, payment.student_id FROM student JOIN payment ON student.id = payment.student_id) AS result WHERE result.amount > 1000 ORDER BY result.birthday ASC;