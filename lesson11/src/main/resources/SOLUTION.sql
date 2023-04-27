UPDATE subject SET grade = 5 WHERE (name = 'End of Suburbia: Oil Depletion and the Collapse of the American Dream');
UPDATE student SET groupnumber = 8 WHERE (name = 'Tremaine Worvill');
UPDATE payment SET amount = 500, student_id = 2 WHERE (DATE(payment_date) > DATE_ADD('2021-01-01', INTERVAL 0 microsecond)) AND type_id = 2;
UPDATE mark SET mark = 2 WHERE subject_id = 315;