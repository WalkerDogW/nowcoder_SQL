/*
题目描述
查找最晚入职员工的所有信息

*/
drop table if exists `employees`;
CREATE TABLE `employees` (
`emp_no` int(11) NOT NULL,
`birth_date` date NOT NULL,
`first_name` varchar(14) NOT NULL,
`last_name` varchar(16) NOT NULL,
`gender` char(1) NOT NULL,
`hire_date` date NOT NULL,
PRIMARY KEY (`emp_no`));

insert employees values('10008','1958-02-19','Saniya','Kalloufi','M','1994-09-15');
insert employees values('10009','1944-05-20','Joy','Mai','M','1995-02-20');
insert employees values('10007','1952-12-25','Tar','Loi','F','1996-03-16');

select * from employees where hire_date = (select  distinct hire_date from employees order by hire_date desc limit 2,1);
