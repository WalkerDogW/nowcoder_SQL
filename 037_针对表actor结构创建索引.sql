-- 针对如下表actor结构创建索引：
drop table if exists actor;
CREATE TABLE IF NOT EXISTS actor (
actor_id smallint(5) NOT NULL PRIMARY KEY,
first_name varchar(45) NOT NULL,
last_name varchar(45) NOT NULL,
last_update timestamp NOT NULL DEFAULT now())
-- 对first_name创建唯一索引uniq_idx_firstname，对last_name创建普通索引idx_lastname


alter table actor
add unique uniq_idx_firstname(first_name);
alter table actor 
add index idx_lastname (last_name) ;
/*
create unique index uniq_idx_firstname on actor(first_name);
create index idx_lastname on actor(last_name);
*/