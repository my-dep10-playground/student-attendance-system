CREATE TABLE IF NOT EXISTS User(
    username VARCHAR(50) PRIMARY KEY ,
    password VARCHAR(100) NOT NULL ,
    full_name VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS Student(
    id VARCHAR(20) PRIMARY KEY ,
    name VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS Picture(
    picture MEDIUMBLOB NOT NULL ,
    student_id VARCHAR(20) PRIMARY KEY ,
    CONSTRAINT fk_student_picture FOREIGN KEY (student_id) REFERENCES Student(id)
);
CREATE TABLE IF NOT EXISTS Attendance(
    id INT PRIMARY KEY AUTO_INCREMENT,
    status ENUM('IN','OUT') NOT NULL ,
    stamp DATETIME NOT NULL ,
    student_id VARCHAR(20) NOT NULL ,
    CONSTRAINT fk_student_attendance FOREIGN KEY (student_id) REFERENCES Student(id)
);

