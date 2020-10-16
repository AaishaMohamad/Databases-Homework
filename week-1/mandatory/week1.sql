CREATE TABLE mentors(
    id                          SERIAL PRIMARY KEY,
    name                        VARCHAR(30) NOT NULL,
    years_in_glasgow            INT,
    address                     VARCHAR(120) NOT NULL,
    fav_programming_language    VARCHAR(30)

);




CREATE TABLE students(
    id                          SERIAL PRIMARY KEY,
    name                        VARCHAR(30) NOT NULL,
    address                     VARCHAR(120),
    cyf_graduate                BOOLEAN NOT NULL

);

CREATE TABLE classes(
    id                          SERIAL PRIMARY KEY,
    leading_mentor              INT REFERENCES mentors(id) NOT NULL,
    topic                       VARCHAR(120)NOT NULL,
    class_date                   DATE NOT NULL,
    class_location               VARCHAR(100) NOT NULL

);

CREATE TABLE attendance (
    id               SERIAL PRIMARY KEY,
    student_id       INT REFERENCES students(id) NOT NULL,
    student_id         INT REFERENCES classes(id) NOT NULL,
    topic            VARCHAR(120) NOT NULL
);


INSERT INTO mentors(name,years_in_glasgow,address,fav_programming_language) VALUES('Sally',1,'east-end','sql');
INSERT INTO mentors(name,years_in_glasgow,address,fav_programming_language) VALUES('Mark',2,'south-side','js');
INSERT INTO mentors(name,years_in_glasgow,address,fav_programming_language) VALUES('Steff',3,'up-north','C++');
INSERT INTO mentors(name,years_in_glasgow,address,fav_programming_language) VALUES('Hannah',4,'west-end','python');
INSERT INTO mentors(name,years_in_glasgow,address,fav_programming_language) VALUES('Ahmad', 10, 'city Center','java');



INSERT INTO students (name, address, cyf_graduate) VALUES ('Meriem', '6th Ave', 'yes');
INSERT INTO students (name, address, cyf_graduate) VALUES ('Etzali', '31 High St', 'yes');
INSERT INTO students (name, address, cyf_graduate) VALUES ('Hacer', '3 Napier Place', 'no');
INSERT INTO students (name, address, cyf_graduate) VALUES ('Andrei', '88 Skirving St', 'no');
INSERT INTO students (name, address, cyf_graduate) VALUES ('Nab', '12 Paisley Rd', 'yes');
INSERT INTO students (name, address, cyf_graduate) VALUES ('Mawaddah', '2 Rose St', 'no');
INSERT INTO students (name, address, cyf_graduate) VALUES ('Natalia', '65 Junction Ave', 'no');
INSERT INTO students (name, address, cyf_graduate) VALUES ('Mohamed', 'Ashton Rd', 'yes');
INSERT INTO students (name, address, cyf_graduate) VALUES ('Roxana', '7 Burleigh Place', 'yes');
INSERT INTO students (name, address, cyf_graduate) VALUES ('Sharlu', '201 Elder St', 'no');


INSERT INTO classes (leading_mentor, topic, class_date, class_location) VALUES (2, 'Javascript', '2020-07-15', 'Glasgow');
INSERT INTO classes (leading_mentor, topic, class_date, class_location) VALUES (3, 'NodeJS', '2020-04-25', 'Glasgow');
INSERT INTO classes (leading_mentor, topic, class_date, class_location) VALUES (1, 'Javascript', '2020-07-10', 'Glasgow');
INSERT INTO classes (leading_mentor, topic, class_date, class_location) VALUES (4, 'NodeJS', '2020-02-17', 'Glasgow');
INSERT INTO classes (leading_mentor, topic, class_date, class_location) VALUES (5, 'Javascript', '2020-09-02', 'Glasgow');

INSERT INTO attendance (student_id, class_id, topic) VALUES ( 10,1 ,'Javascript');
INSERT INTO attendance (student_id, class_id, topic) VALUES ( 3,2 ,'NodeJS');
INSERT INTO attendance (student_id, class_id, topic) VALUES ( 5,3, 'NodeJS');
INSERT INTO attendance (student_id, class_id, topic) VALUES ( 8,4 ,'Javascript');


-- SELECT * FROM mentors WHERE years_in_glasgow >5;
-- SELECT * FROM mentors WHERE fav_programming_language ='js';
-- SELECT * FROM students WHERE cyf_graduate = 'yes';
-- SELECT * FROM classes WHERE class_date < '2020-06-01';
-- SELECT * FROM attendance WHERE topic = 'Javascript'; 
