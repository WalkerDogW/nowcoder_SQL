-- 汇总各个部门当前员工的title类型的分配数目，结果给出部门编号dept_no、dept_name、其当前员工所有的title以及该类型title对应的数目count
drop table if exists departments;
CREATE TABLE `departments` (
`dept_no` char(4) NOT NULL,
`dept_name` varchar(40) NOT NULL,
PRIMARY KEY (`dept_no`));

drop table if exists dept_emp;
CREATE TABLE `dept_emp` (
`emp_no` int(11) NOT NULL,
`dept_no` char(4) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`dept_no`));

drop table if exists titles;
CREATE TABLE IF NOT EXISTS `titles` (
`emp_no` int(11) NOT NULL,
`title` varchar(50) NOT NULL,
`from_date` date NOT NULL,
`to_date` date DEFAULT NULL);

INSERT INTO departments VALUES('d001','Marketing'); INSERT INTO departments VALUES('d002','Finance'); INSERT INTO departments VALUES('d003','Human Resources'); INSERT INTO departments VALUES('d004','Production'); INSERT INTO departments VALUES('d005','Development'); INSERT INTO departments VALUES('d006','Quality Management'); INSERT INTO dept_emp VALUES(10001,'d001','1986-06-26','9999-01-01'); INSERT INTO dept_emp VALUES(10002,'d001','1996-08-03','9999-01-01'); INSERT INTO dept_emp VALUES(10003,'d004','1995-12-03','9999-01-01'); INSERT INTO dept_emp VALUES(10004,'d004','1986-12-01','9999-01-01'); INSERT INTO dept_emp VALUES(10005,'d003','1989-09-12','9999-01-01'); INSERT INTO dept_emp VALUES(10006,'d002','1990-08-05','9999-01-01'); INSERT INTO dept_emp VALUES(10007,'d005','1989-02-10','9999-01-01'); INSERT INTO dept_emp VALUES(10008,'d005','1998-03-11','2000-07-31'); INSERT INTO dept_emp VALUES(10009,'d006','1985-02-18','9999-01-01'); INSERT INTO dept_emp VALUES(10010,'d005','1996-11-24','2000-06-26'); INSERT INTO dept_emp VALUES(10010,'d006','2000-06-26','9999-01-01'); INSERT INTO titles VALUES(10001,'Senior Engineer','1986-06-26','9999-01-01'); INSERT INTO titles VALUES(10002,'Staff','1996-08-03','9999-01-01'); INSERT INTO titles VALUES(10003,'Senior Engineer','1995-12-03','9999-01-01'); INSERT INTO titles VALUES(10004,'Engineer','1986-12-01','1995-12-01'); INSERT INTO titles VALUES(10004,'Senior Engineer','1995-12-01','9999-01-01'); INSERT INTO titles VALUES(10005,'Senior Staff','1996-09-12','9999-01-01'); INSERT INTO titles VALUES(10005,'Staff','1989-09-12','1996-09-12'); INSERT INTO titles VALUES(10006,'Senior Engineer','1990-08-05','9999-01-01'); INSERT INTO titles VALUES(10007,'Senior Staff','1996-02-11','9999-01-01'); INSERT INTO titles VALUES(10007,'Staff','1989-02-10','1996-02-11'); INSERT INTO titles VALUES(10008,'Assistant Engineer','1998-03-11','2000-07-31'); INSERT INTO titles VALUES(10009,'Assistant Engineer','1985-02-18','1990-02-18'); INSERT INTO titles VALUES(10009,'Engineer','1990-02-18','1995-02-18'); INSERT INTO titles VALUES(10009,'Senior Engineer','1995-02-18','9999-01-01'); INSERT INTO titles VALUES(10010,'Engineer','1996-11-24','9999-01-01'); INSERT INTO titles VALUES(10010,'Engineer','1996-11-24','9999-01-01');




select d.dept_no, d.dept_name, t.title , count(t.title) as count
from dept_emp as de
left join departments as d on de.dept_no = d.dept_no
left join titles as t on de.emp_no = t.emp_no
where de.to_date = '9999-01-01' and t.to_date='9999-01-01'
group by d.dept_no,t.title;