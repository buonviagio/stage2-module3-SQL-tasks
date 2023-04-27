SELECT amount FROM payment WHERE amount >= 500;
SELECT * FROM student WHERE YEAR(DATE_ADD('2023-04-27', INTERVAL 1 MICROSECOND)) - YEAR(DATE_ADD(student.birthday, INTERVAL 1 MICROSECOND)) > 20;
SELECT * FROM student WHERE (YEAR(DATE_ADD('2023-04-27', INTERVAL 1 MICROSECOND)) - YEAR(DATE_ADD(student.birthday, INTERVAL 1 MICROSECOND)) < 20) & (student.groupnumber=10);
SELECT * FROM student WHERE name='Mike' OR (groupnumber=4) OR (groupnumber=5) OR (groupnumber=6);
SELECT * FROM payment WHERE payment.payment_date >= DATE_ADD('2023-04-27', INTERVAL -8 MONTH);
SELECT * FROM student WHERE name like 'A%';
SELECT * FROM student WHERE (name like 'Roxi%' AND groupnumber=4) OR (name like 'Tallie%' AND groupnumber=9);
