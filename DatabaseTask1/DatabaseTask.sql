drop database if exists amentumTask;
create database amentumTask;
use amentumTask;



#---------------------------------------------------------------------------------------------




CREATE TABLE IF NOT EXISTS phone_type (
  phone_type_id 	INT 		 NOT NULL  AUTO_INCREMENT,
  type 				VARCHAR(10)  NOT NULL,
  PRIMARY KEY (phone_type_id),
  UNIQUE INDEX phone_type_id_UNIQUE (phone_type_id ASC) VISIBLE
  );

CREATE TABLE IF NOT EXISTS work_location (
  work_location_id 	INT 		 NOT NULL  AUTO_INCREMENT,
  name 				VARCHAR(50)  NOT NULL,
  location 			VARCHAR(50)  NOT NULL,
  PRIMARY KEY (work_location_id),
  UNIQUE INDEX work_location_id_UNIQUE (work_location_id ASC) VISIBLE
  );

CREATE TABLE IF NOT EXISTS employee (
  employee_id 		INT 		 NOT NULL  AUTO_INCREMENT,
  first_name 		VARCHAR(50)  NOT NULL,
  last_name 		VARCHAR(50)  NOT NULL,
  birth_date 		DATE 		 NOT NULL,
  hire_date 		DATE 		 NOT NULL,
  work_location_id 	INT 		 NOT NULL,
  PRIMARY KEY (employee_id),
  UNIQUE INDEX employee_id_UNIQUE (employee_id ASC) VISIBLE,
  FOREIGN KEY (work_location_id) REFERENCES work_location(work_location_id)
  );
  
  CREATE TABLE IF NOT EXISTS phone (
  phone_id			int			 NOT NULL  AUTO_INCREMENT,
  employee_id 	 	INT 		 NOT NULL,
  phone_number 		VARCHAR(20)  NOT NULL,
  phone_type_id  	INT 		 NOT NULL,
  PRIMARY KEY (phone_id),
  UNIQUE INDEX phone_id_UNIQUE (phone_id ASC) VISIBLE,
  FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
  FOREIGN KEY (phone_type_id) REFERENCES phone_type(phone_type_id)
  );



#---------------------------------------------------------------------------------------------



INSERT INTO phone_type (type) VALUES
('Mobile'),
('Home'),
('Work');


INSERT INTO work_location (name, location) VALUES
('Workplace A', '123 Main Street'),
('Workplace B', '456 Elm Street'),
('Workplace C', '789 Oak Street'),
('Workplace D', '101 Pine Street'),
('Workplace E', '222 Maple Street'),
('Workplace F', '333 Cedar Street'),
('Workplace G', '444 Birch Street'),
('Workplace H', '555 Walnut Street'),
('Workplace I', '666 Chestnut Street'),
('Workplace J', '777 Spruce Street');

INSERT INTO employee (first_name, last_name, birth_date, hire_date, work_location_id) VALUES
('John', 'Doe', '1990-05-15', '2015-07-01', 1),
('Jane', 'Smith', '1985-10-20', '2018-03-10', 2),
('Michael', 'Johnson', '1993-02-28', '2020-01-05', 3),
('Emily', 'Davis', '1988-08-12', '2017-11-20', 4),
('David', 'Brown', '1991-04-18', '2019-09-15', 5),
('Sarah', 'Taylor', '1983-11-25', '2016-05-08', 6),
('James', 'Wilson', '1989-07-03', '2014-12-20', 7),
('Jennifer', 'Martinez', '1995-01-30', '2021-03-02', 8),
('Daniel', 'Anderson', '1987-09-08', '2013-08-10', 9),
('Jessica', 'Garcia', '1992-06-22', '2018-11-12', 10),
('Christopher', 'Lee', '1984-12-09', '2017-04-25', 1),
('Amanda', 'Hernandez', '1990-08-17', '2019-01-18', 2),
('Matthew', 'Lopez', '1986-03-05', '2015-10-30', 3),
('Ashley', 'Gonzalez', '1994-02-14', '2020-07-22', 4),
('Ryan', 'Perez', '1982-10-28', '2016-02-14', 5),
('Elizabeth', 'Ramirez', '1988-07-07', '2014-09-05', 6),
('Justin', 'Torres', '1996-05-03', '2021-09-08', 7),
('Samantha', 'Flores', '1985-01-12', '2017-06-16', 8),
('Robert', 'Rivera', '1993-08-20', '2019-12-30', 9),
('Lauren', 'Kim', '1989-11-15', '2015-04-28', 10),
('William', 'Nguyen', '1991-03-24', '2016-08-03', 1),
('Megan', 'Patel', '1987-06-11', '2018-02-17', 2),
('Joshua', 'Liu', '1990-09-29', '2017-11-05', 3),
('Madison', 'Martinez', '1994-12-06', '2020-04-12', 4),
('Andrew', 'Garcia', '1986-05-18', '2015-09-25', 5),
('Stephanie', 'Kim', '1983-08-08', '2019-01-11', 6),
('Brandon', 'Chen', '1992-01-05', '2016-07-20', 7),
('Olivia', 'Nguyen', '1988-04-19', '2014-10-02', 8),
('Tyler', 'Wong', '1995-07-22', '2021-02-28', 9),
('Emma', 'Gonzalez', '1989-11-01', '2015-06-14', 10),
('Jacob', 'Patel', '1993-02-18', '2018-09-22', 1),
('Hannah', 'Chang', '1987-10-04', '2016-04-18', 2),
('Nicholas', 'Hernandez', '1990-06-14', '2013-12-05', 3),
('Grace', 'Liu', '1994-09-30', '2020-02-15', 4),
('Ethan', 'Tran', '1986-04-23', '2015-08-28', 5),
('Natalie', 'Wong', '1983-07-07', '2019-03-10', 6),
('Alexander', 'Chen', '1992-10-12', '2016-07-15', 7),
('Isabella', 'Nguyen', '1988-05-26', '2014-11-19', 8),
('Logan', 'Garcia', '1995-08-15', '2021-01-30', 9),
('Chloe', 'Wong', '1990-11-27', '2015-05-10', 10),
('Benjamin', 'Patel', '1993-03-17', '2018-10-20', 1),
('Zoe', 'Chang', '1987-09-05', '2016-03-15', 2),
('William', 'Hernandez', '1990-05-09', '2013-11-25', 3),
('Avery', 'Liu', '1994-10-02', '2020-03-07', 4),
('Mia', 'Tran', '1986-01-11', '2015-07-25', 5),
('Elijah', 'Wong', '1983-06-03', '2019-02-05', 6),
('Charlotte', 'Chen', '1992-11-08', '2016-08-10', 7),
('Liam', 'Nguyen', '1988-06-20', '2014-12-15', 8),
('Amelia', 'Garcia', '1995-09-12', '2021-02-18', 9),
('Mason', 'Wong', '1991-12-04', '2015-06-17', 10),
('Evelyn', 'Chang', '1987-08-02', '2016-02-25', 1),
('Jackson', 'Hernandez', '1990-04-18', '2013-10-12', 2),
('Harper', 'Liu', '1994-09-23', '2020-02-28', 3),
('Lucas', 'Tran', '1986-02-16', '2015-08-20', 4),
('Abigail', 'Wong', '1983-05-09', '2019-01-15', 5),
('Aiden', 'Wong', '1992-11-15', '2016-08-18', 6),
('Elizabeth', 'Chen', '1988-06-27', '2014-12-20', 7),
('Jacob', 'Nguyen', '1995-09-30', '2021-03-05', 8),
('Sofia', 'Garcia', '1991-12-12', '2015-06-25', 9),
('Jackson', 'Wong', '1987-07-04', '2016-01-15', 10),
('Ella', 'Chang', '1990-04-18', '2013-10-12', 1),
('Alexander', 'Hernandez', '1994-09-23', '2020-02-28', 2),
('Carter', 'Liu', '1986-02-16', '2015-08-20', 3),
('Scarlett', 'Tran', '1983-05-09', '2019-01-15', 4),
('Aria', 'Wong', '1992-11-15', '2016-08-18', 5),
('Luna', 'Wong', '1988-06-27', '2014-12-20', 6),
('Grayson', 'Chen', '1995-09-30', '2021-03-05', 7),
('Aaliyah', 'Garcia', '1991-12-12', '2015-06-25', 8),
('Oliver', 'Wong', '1987-07-04', '2016-01-15', 9),
('Zachary', 'Chang', '1990-04-18', '2013-10-12', 10),
('Eleanor', 'Martinez', '1993-06-22', '2019-11-12', 1),
('Gabriel', 'Rodriguez', '1988-09-19', '2014-10-25', 2),
('Avery', 'Lopez', '1996-04-14', '2020-08-02', 3),
('Nora', 'Gomez', '1984-11-08', '2016-03-20', 4),
('Hudson', 'Hernandez', '1990-07-15', '2015-01-10', 5),
('Ellie', 'Sanchez', '1987-02-28', '2018-06-15', 6),
('Eli', 'Perez', '1992-08-03', '2017-12-28', 7),
('Scarlett', 'Ramirez', '1997-03-11', '2021-10-15', 8),
('Lincoln', 'Torres', '1994-10-27', '2019-04-20', 9),
('Maya', 'Hernandez', '1989-05-20', '2014-09-05', 10),
('Evan', 'Flores', '1995-02-09', '2020-07-10', 1),
('Layla', 'Gonzalez', '1991-07-07', '2016-11-28', 2),
('Hazel', 'Rivera', '1986-12-30', '2018-05-22', 3),
('Elijah', 'Martinez', '1993-09-17', '2019-02-18', 4),
('Nova', 'Sanchez', '1984-06-14', '2017-10-10', 5),
('Mateo', 'Lopez', '1990-01-08', '2015-04-15', 6),
('Aria', 'Perez', '1996-06-25', '2020-11-28', 7),
('Jameson', 'Ramirez', '1991-11-19', '2016-07-02', 8),
('Ivy', 'Torres', '1994-04-03', '2019-08-20', 9),
('Xavier', 'Hernandez', '1989-08-17', '2014-12-10', 10),
('Eleanor', 'Gonzalez', '1995-03-22', '2020-09-12', 1),
('Gabriel', 'Rivera', '1990-09-19', '2015-11-25', 2),
('Avery', 'Lopez', '1986-04-14', '2018-08-02', 3),
('Nora', 'Gomez', '1993-11-08', '2016-03-20', 4),
('Hudson', 'Hernandez', '1987-07-15', '2018-01-10', 5),
('Ellie', 'Sanchez', '1992-02-28', '2019-06-15', 6),
('Eli', 'Perez', '1997-08-03', '2022-01-28', 7),
('Scarlett', 'Ramirez', '1992-03-11', '2017-10-15', 8),
('Lincoln', 'Torres', '1989-10-27', '2014-04-20', 9),
('Maya', 'Hernandez', '1994-05-20', '2019-09-05', 10);


INSERT INTO phone (employee_id, phone_number, phone_type_id) VALUES
(1, '123-456-7890', 1),
(1, '987-654-3210', 2),
(2, '234-567-8901', 1),
(2, '876-543-2109', 3),
(3, '345-678-9012', 2),
(3, '765-432-1098', 3),
(4, '456-789-0123', 1),
(5, '567-890-1234', 2),
(6, '678-901-2345', 3),
(7, '789-012-3456', 1),
(8, '890-123-4567', 1),
(9, '901-234-5678', 2),
(10, '012-345-6789', 3),
(11, '123-456-7890', 1),
(11, '987-654-3210', 2),
(12, '234-567-8901', 1),
(12, '876-543-2109', 3),
(13, '345-678-9012', 2),
(13, '765-432-1098', 3),
(14, '456-789-0123', 1),
(15, '567-890-1234', 2),
(16, '678-901-2345', 3),
(17, '789-012-3456', 1),
(18, '890-123-4567', 1),
(19, '901-234-5678', 2),
(20, '012-345-6789', 3),
(21, '123-456-7890', 1),
(21, '987-654-3210', 2),
(22, '234-567-8901', 1),
(22, '876-543-2109', 3),
(23, '345-678-9012', 2),
(23, '765-432-1098', 3),
(24, '456-789-0123', 1),
(25, '567-890-1234', 2),
(26, '678-901-2345', 3),
(27, '789-012-3456', 1),
(28, '890-123-4567', 1),
(29, '901-234-5678', 2),
(30, '012-345-6789', 3),
(31, '123-456-7890', 1),
(31, '987-654-3210', 2),
(32, '234-567-8901', 1),
(32, '876-543-2109', 3),
(33, '345-678-9012', 2),
(33, '765-432-1098', 3),
(34, '456-789-0123', 1),
(35, '567-890-1234', 2),
(36, '678-901-2345', 3),
(37, '789-012-3456', 1),
(38, '890-123-4567', 1),
(39, '901-234-5678', 2),
(40, '012-345-6789', 3),
(41, '123-456-7890', 1),
(41, '987-654-3210', 2),
(42, '234-567-8901', 1),
(42, '876-543-2109', 3),
(43, '345-678-9012', 2),
(43, '765-432-1098', 3),
(44, '456-789-0123', 1),
(45, '567-890-1234', 2),
(46, '678-901-2345', 3),
(47, '789-012-3456', 1),
(48, '890-123-4567', 1),
(49, '901-234-5678', 2),
(50, '012-345-6789', 3),
(51, '123-456-7890', 1),
(51, '987-654-3210', 2),
(52, '234-567-8901', 1),
(52, '876-543-2109', 3),
(53, '345-678-9012', 2),
(53, '765-432-1098', 3),
(54, '456-789-0123', 1),
(55, '567-890-1234', 2),
(56, '678-901-2345', 3),
(57, '789-012-3456', 1),
(58, '890-123-4567', 1),
(59, '901-234-5678', 2),
(60, '012-345-6789', 3),
(61, '123-456-7890', 1),
(61, '987-654-3210', 2),
(62, '234-567-8901', 1),
(62, '876-543-2109', 3),
(63, '345-678-9012', 2),
(63, '765-432-1098', 3),
(64, '456-789-0123', 1),
(65, '567-890-1234', 2),
(66, '678-901-2345', 3),
(67, '789-012-3456', 1),
(68, '890-123-4567', 1),
(69, '901-234-5678', 2),
(70, '012-345-6789', 3),
(71, '123-456-7890', 1),
(71, '987-654-3210', 2),
(72, '234-567-8901', 1),
(72, '876-543-2109', 3),
(73, '345-678-9012', 2),
(73, '765-432-1098', 3),
(74, '456-789-0123', 1),
(75, '567-890-1234', 2),
(76, '678-901-2345', 3),
(77, '789-012-3456', 1),
(78, '890-123-4567', 1),
(79, '901-234-5678', 2),
(80, '012-345-6789', 3),
(81, '123-456-7890', 1),
(81, '987-654-3210', 2),
(82, '234-567-8901', 1),
(82, '876-543-2109', 3),
(83, '345-678-9012', 2),
(83, '765-432-1098', 3),
(84, '456-789-0123', 1),
(85, '567-890-1234', 2),
(86, '678-901-2345', 3),
(87, '789-012-3456', 1),
(88, '890-123-4567', 1),
(89, '901-234-5678', 2),
(90, '012-345-6789', 3),
(91, '123-456-7890', 1),
(91, '987-654-3210', 2),
(92, '234-567-8901', 1),
(92, '876-543-2109', 3),
(93, '345-678-9012', 2),
(93, '765-432-1098', 3),
(94, '456-789-0123', 1),
(95, '567-890-1234', 2),
(96, '678-901-2345', 3),
(97, '789-012-3456', 1),
(98, '890-123-4567', 1),
(99, '901-234-5678', 2),
(100, '012-345-6789', 3);



#---------------------------------------------------------------------------------------------



SELECT * FROM employee;
SELECT * FROM phone;
SELECT * FROM phone_type;
SELECT * FROM work_location;


# shows the name of the phone number owner along with its type
SELECT e.first_name, e.last_name, p.phone_number, pt.type
FROM employee e
JOIN phone p ON e.employee_id = p.employee_id
JOIN phone_type pt ON p.phone_type_id = pt.phone_type_id
ORDER BY e.employee_id;


# counts the number of employees per location
SELECT wl.location, COUNT(e.employee_id) AS num_employees
FROM work_location wl
LEFT JOIN employee e ON wl.work_location_id = e.work_location_id
GROUP BY wl.location;


# gets all employees with both mobile and home phones on record
SELECT e.first_name, e.last_name
FROM employee e
WHERE EXISTS (
    SELECT 1
    FROM phone p
    WHERE e.employee_id = p.employee_id
    AND p.phone_type_id = 1
    OR p.phone_type_id = 2
    GROUP BY p.employee_id
    HAVING COUNT(DISTINCT p.phone_type_id) >= 2
);


# finds all the 20 year old employees in the database
SELECT e.first_name, e.last_name, timestampdiff(YEAR, e.birth_date, CURDATE()) as age
FROM employee e
WHERE timestampdiff(YEAR, e.birth_date, CURDATE()) LIKE "2%"
ORDER BY age;


# SP of a requested empkoyee's work seniority
DROP PROCEDURE IF EXISTS company_seniority;
DELIMITER //
CREATE PROCEDURE company_seniority(IN eid INT)
BEGIN
	SELECT e.first_name, e.last_name, timestampdiff(YEAR, e.hire_date, CURDATE()) as seniority
	FROM employee e
	WHERE e.employee_id = eid;
END //
DELIMITER ;


# uses SP to get seniority
CALL company_seniority(41);