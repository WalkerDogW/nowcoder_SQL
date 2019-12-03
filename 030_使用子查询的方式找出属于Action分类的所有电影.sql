-- 使用子查询的方式找出属于Action分类的所有电影对应的title,description
drop table if exists film;
CREATE TABLE IF NOT EXISTS film (
film_id smallint(5)  NOT NULL DEFAULT '0',
title varchar(255) NOT NULL,
description text,
PRIMARY KEY (film_id));

drop table if exists category;
CREATE TABLE category  (
category_id  tinyint(3)  NOT NULL ,
name  varchar(25) NOT NULL, `last_update` timestamp,
PRIMARY KEY ( category_id ));

drop table if exists film_category;
CREATE TABLE film_category  (
film_id  smallint(5)  NOT NULL,
category_id  tinyint(3)  NOT NULL, `last_update` timestamp);

-- 非子查询
select f.title,f.description
from film as f
inner join film_category as fc on f.film_id = fc.film_id
inner join category as c on c.category_id = fc.category_id 
where c.`name`='Action'

-- 子查询
select f.title,f.description
from film as f
where f.film_id in 
	(select fc.film_id 
	from film_category as fc
	inner join category as c on c.category_id = fc.category_id
	where c.name='Action' )

-- 子查询2
select title,description 
from film
where film_id in
(select film_id from film_category 
where category_id in 
(select category_id from category 
where name like 'action'))
