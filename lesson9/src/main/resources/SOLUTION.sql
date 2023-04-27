SELECT r.name, AVG(r.mark) as average_mark  FROM (SELECT s.name, m.mark FROM student AS s JOIN mark AS m ON s.id = m.student_id) AS r GROUP BY name HAVING average_mark > 8;
SELECT r.id, r.name, AVG(r.mark) as average_mark  FROM (SELECT s.id, s.name, m.mark FROM student AS s JOIN mark AS m ON s.id = m.student_id) AS r GROUP BY id, name HAVING average_mark > 7;
