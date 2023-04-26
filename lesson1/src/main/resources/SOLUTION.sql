CREATE TABLE student (id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(250), birthday DATE NOT NULL, group_number INT NOT NULL);
CREATE TABLE subject (id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(250),description VARCHAR(50), grade INT NOT NULL);
CREATE TABLE paymentType (id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(250));
CREATE TABLE payment (id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, type_id BIGINT NOT NULL, FOREIGN KEY (type_id) REFERENCES paymentType(id), amount DECIMAL NOT NULL, student_id BIGINT NOT NULL, FOREIGN KEY (student_id) REFERENCES student(id), payment_date DATETIME);
CREATE TABLE mark (id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, student_id BIGINT NOT NULL, FOREIGN KEY(student_id) REFERENCES student(id), subject_id BIGINT NOT NULL, FOREIGN KEY(subject_id) REFERENCES subject(id), mark INT NOT NULL);