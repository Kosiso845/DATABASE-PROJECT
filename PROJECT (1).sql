CREATE DATABASE student_records;
USE student_records;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    dob DATE,
    gender ENUM('Male', 'Female', 'Other')
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255) NOT NULL,
    instructor VARCHAR(100) NOT NULL
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
INSERT INTO students (name, email, dob, gender) VALUES 
('kosiso chukwu', 'kosisobest24@gmail.com', '2002-05-12', 'Female'),
('Bob Smith', 'bobsmith@gmail.com', '2001-08-23', 'Male');

INSERT INTO courses (course_name, instructor) VALUES 
('Mathematics', 'Dr. David'),
('Physics', 'Dr. Sarah');

INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES 
(1, 1, '2025-05-01'),
(2, 2, '2025-05-02');
