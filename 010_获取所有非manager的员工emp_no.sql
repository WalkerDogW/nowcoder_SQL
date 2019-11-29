-- 获取所有非manager的员工emp_no
drop table if exists dept_manager;
CREATE TABLE `dept_manager` (
`dept_no` char(4) NOT NULL,
`emp_no` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`dept_no`));

drop table if exists employees;
CREATE TABLE `employees` (
`emp_no` int(11) NOT NULL,
`birth_date` date NOT NULL,
`first_name` varchar(14) NOT NULL,
`last_name` varchar(16) NOT NULL,
`gender` char(1) NOT NULL,
`hire_date` date NOT NULL,
PRIMARY KEY (`emp_no`));


INSERT INTO dept_manager VALUES('d001',10002,'1996-08-03','9999-01-01'); INSERT INTO dept_manager VALUES('d002',10006,'1990-08-05','9999-01-01'); INSERT INTO dept_manager VALUES('d003',10005,'1989-09-12','9999-01-01'); INSERT INTO dept_manager VALUES('d004',10004,'1986-12-01','9999-01-01'); INSERT INTO dept_manager VALUES('d005',10010,'1996-11-24','2000-06-26'); INSERT INTO dept_manager VALUES('d006',10010,'2000-06-26','9999-01-01'); INSERT INTO employees VALUES(10001,'1953-09-02','Georgi','Facello','M','1986-06-26'); INSERT INTO employees VALUES(10002,'1964-06-02','Bezalel','Simmel','F','1985-11-21'); INSERT INTO employees VALUES(10003,'1959-12-03','Parto','Bamford','M','1986-08-28'); INSERT INTO employees VALUES(10004,'1954-05-01','Chirstian','Koblick','M','1986-12-01'); INSERT INTO employees VALUES(10005,'1955-01-21','Kyoichi','Maliniak','M','1989-09-12'); INSERT INTO employees VALUES(10006,'1953-04-20','Anneke','Preusig','F','1989-06-02'); INSERT INTO employees VALUES(10007,'1957-05-23','Tzvetan','Zielinski','F','1989-02-10'); INSERT INTO employees VALUES(10008,'1958-02-19','Saniya','Kalloufi','M','1994-09-15'); INSERT INTO employees VALUES(10009,'1952-04-19','Sumant','Peac','F','1985-02-18'); INSERT INTO employees VALUES(10010,'1963-06-01','Duangkaew','Piveteau','F','1989-08-24'); INSERT INTO employees VALUES(10011,'1953-11-07','Mary','Sluis','F','1990-01-22');

select e.emp_no 
from employees as e
where e.emp_no not in (select d.emp_no from dept_manager as d);
