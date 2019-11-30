-- 获取所有员工当前的manager，如果当前的manager是自己的话结果不显示，当前表示to_date='9999-01-01'。
-- 结果第一列给出当前员工的emp_no,第二列给出其manager对应的manager_no。
drop table if exists dept_emp;
CREATE TABLE `dept_emp` (
`emp_no` int(11) NOT NULL,
`dept_no` char(4) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`dept_no`));

drop table if exists dept_manager;
CREATE TABLE `dept_manager` (
`dept_no` char(4) NOT NULL,
`emp_no` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`dept_no`));

INSERT INTO dept_emp VALUES(10001,'d001','1986-06-26','9999-01-01'); INSERT INTO dept_emp VALUES(10002,'d001','1996-08-03','9999-01-01'); INSERT INTO dept_emp VALUES(10003,'d004','1995-12-03','9999-01-01'); INSERT INTO dept_emp VALUES(10004,'d004','1986-12-01','9999-01-01'); INSERT INTO dept_emp VALUES(10005,'d003','1989-09-12','9999-01-01'); INSERT INTO dept_emp VALUES(10006,'d002','1990-08-05','9999-01-01'); INSERT INTO dept_emp VALUES(10007,'d005','1989-02-10','9999-01-01'); INSERT INTO dept_emp VALUES(10008,'d005','1998-03-11','2000-07-31'); INSERT INTO dept_emp VALUES(10009,'d006','1985-02-18','9999-01-01'); INSERT INTO dept_emp VALUES(10010,'d005','1996-11-24','2000-06-26'); INSERT INTO dept_emp VALUES(10010,'d006','2000-06-26','9999-01-01'); INSERT INTO dept_manager VALUES('d001',10002,'1996-08-03','9999-01-01'); INSERT INTO dept_manager VALUES('d002',10006,'1990-08-05','9999-01-01'); INSERT INTO dept_manager VALUES('d003',10005,'1989-09-12','9999-01-01'); INSERT INTO dept_manager VALUES('d004',10004,'1986-12-01','9999-01-01'); INSERT INTO dept_manager VALUES('d005',10010,'1996-11-24','2000-06-26'); INSERT INTO dept_manager VALUES('d006',10010,'2000-06-26','9999-01-01');

select de.emp_no, dm.emp_no as  manager_no from dept_emp as de
left join dept_manager as dm on de.dept_no = dm.dept_no
where de.emp_no != dm.emp_no and de.to_date  = "9999-01-01" and  dm.to_date = "9999-01-01"