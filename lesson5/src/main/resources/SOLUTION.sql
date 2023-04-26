SELECT amount FROM payment WHERE amount >= 500;
SELECT * FROM student WHERE YEAR(current_date()) - YEAR(birthday) > 20;
SELECT * FROM student WHERE (YEAR(current_date()) - YEAR(birthday) > 20) & (groupnumber=10);
SELECT * FROM student WHERE name='Mike' OR (groupnumber=4) OR (groupnumber=5) OR (groupnumber=6);
SELECT * FROM payment WHERE TIMESTAMPDIFF(MONTH, payment_date, CURRENT_TIMESTAMP) <= 8;
SELECT * FROM student WHERE name like 'A%';
SELECT * FROM student WHERE (name='Roxi' AND groupnumber=4) OR (name='Tallie' AND groupnumber=9);
