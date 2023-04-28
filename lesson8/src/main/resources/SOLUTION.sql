SELECT MAX(birthday) FROM student;
SELECT MIN(payment_date) FROM payment;
SELECT AVG(mark.mark) FROM subject JOIN mark ON subject.id = mark.subject_id WHERE subject.name= 'Math';
SELECT MIN(payment.amount) FROM payment JOIN paymenttype ON payment.type_id = paymenttype.id WHERE paymenttype.name= 'WEEKLY';
