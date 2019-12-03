-- 查找描述信息中包括robot的电影对应的分类名称以及电影数目，而且还需要该分类对应电影数量>=5部
/*
film表
字段	说明
film_id	电影id
title	电影名称
description	电影描述信息
*/
drop table if exists film;
CREATE TABLE IF NOT EXISTS film (
film_id smallint(5)  NOT NULL DEFAULT '0',
title varchar(255) NOT NULL,
description text,
PRIMARY KEY (film_id));
/*
category表
字段	说明
category_id	电影分类id
name	电影分类名称
last_update	电影分类最后更新时间
*/
drop table if exists category;
CREATE TABLE category  (
category_id  tinyint(3)  NOT NULL ,
name  varchar(25) NOT NULL, `last_update` timestamp,
PRIMARY KEY ( category_id ));
/*
film_category表
字段	说明
film_id	电影id
category_id	电影分类id
last_update	电影id和分类id对应关系的最后更新时间
*/
drop table if exists film_category;
CREATE TABLE film_category  (
film_id  smallint(5)  NOT NULL,
category_id  tinyint(3)  NOT NULL, `last_update` timestamp);


INSERT INTO film VALUES(1,'ACADEMY DINOSAUR','A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies'); INSERT INTO film VALUES(2,'ACE GOLDFINGER','A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China'); INSERT INTO film VALUES(3,'ADAPTATION HOLES','A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory'); INSERT INTO film VALUES(4,'AFFAIR PREJUDICE','A Fanciful Documentary of a Frisbee And a Lumberjack who must Chase a Monkey in A Shark Tank'); INSERT INTO film VALUES(5,'AFRICAN EGG','A Fast-Paced Documentary of a Pastry Chef And a Dentist who must Pursue a Forensic Psychologist in The Gulf of Mexico'); INSERT INTO film VALUES(6,'AGENT TRUMAN','A Intrepid Panorama of a Robot And a Boy who must Escape a Sumo Wrestler in Ancient China'); INSERT INTO film VALUES(7,'AIRPLANE SIERRA','A Touching Saga of a Hunter And a Butler who must Discover a Butler in A Jet Boat'); INSERT INTO film VALUES(8,'AIRPORT POLLOCK','A Epic Tale of a Moose And a Girl who must Confront a Monkey in Ancient India'); INSERT INTO film VALUES(9,'ALABAMA DEVIL','A Thoughtful Panorama of a Database Administrator And a Mad Scientist who must Outgun a Mad Scientist in A Jet Boat'); INSERT INTO film VALUES(10,'ALADDIN CALENDAR','A Action-Packed Tale of a Man And a Lumberjack who must Reach a Feminist in Ancient China'); INSERT INTO film VALUES(11,'ALAMO VIDEOTAPE','A Boring Epistle of a Butler And a Cat who must Fight a Pastry Chef in A MySQL Convention'); INSERT INTO film VALUES(12,'ALASKA PHANTOM','A Fanciful Saga of a Hunter And a Pastry Chef who must Vanquish a Boy in Australia'); INSERT INTO film VALUES(13,'ALI FOREVER','A Action-Packed Drama of a Dentist And a Crocodile who must Battle a Feminist in The Canadian Rockies'); INSERT INTO film VALUES(14,'ALICE FANTASIA','A Emotional Drama of a A Shark And a Database Administrator who must Vanquish a Pioneer in Soviet Georgia'); INSERT INTO film VALUES(15,'ALIEN CENTER','A Brilliant Drama of a Cat And a Mad Scientist who must Battle a Feminist in A MySQL Convention'); INSERT INTO film VALUES(16,'ALLEY EVOLUTION','A Fast-Paced Drama of a Robot And a Composer who must Battle a Astronaut in New Orleans'); INSERT INTO film VALUES(17,'ALONE TRIP','A Fast-Paced Character Study of a Composer And a Dog who must Outgun a Boat in An Abandoned Fun House'); INSERT INTO film VALUES(18,'ALTER VICTORY','A Thoughtful Drama of a Composer And a Feminist who must Meet a Secret Agent in The Canadian Rockies'); INSERT INTO film VALUES(19,'AMADEUS HOLY','A Emotional Display of a Pioneer And a Technical Writer who must Battle a Man in A Baloon'); INSERT INTO film VALUES(20,'AMELIE HELLFIGHTERS','A Boring Drama of a Woman And a Squirrel who must Conquer a Student in A Baloon'); INSERT INTO film VALUES(21,'AMERICAN CIRCUS','A Insightful Drama of a Girl And a Astronaut who must Face a Database Administrator in A Shark Tank'); INSERT INTO film VALUES(22,'AMISTAD MIDSUMMER','A Emotional Character Study of a Dentist And a Crocodile who must Meet a Sumo Wrestler in California'); INSERT INTO film VALUES(23,'ANACONDA CONFESSIONS','A Lacklusture Display of a Dentist And a Dentist who must Fight a Girl in Australia'); INSERT INTO film VALUES(24,'ANALYZE HOOSIERS','A Thoughtful Display of a Explorer And a Pastry Chef who must Overcome a Feminist in The Sahara Desert'); INSERT INTO film VALUES(25,'ANGELS LIFE','A Thoughtful Display of a Woman And a Astronaut who must Battle a Robot in Berlin'); INSERT INTO film VALUES(26,'ANNIE IDENTITY','A Amazing Panorama of a Pastry Chef And a Boat who must Escape a Woman in An Abandoned Amusement Park'); INSERT INTO film VALUES(27,'ANONYMOUS HUMAN','A Amazing Reflection of a Database Administrator And a Astronaut who must Outrace a Database Administrator in A Shark Tank'); INSERT INTO film VALUES(28,'ANTHEM LUKE','A Touching Panorama of a Waitress And a Woman who must Outrace a Dog in An Abandoned Amusement Park'); INSERT INTO film VALUES(29,'ANTITRUST TOMATOES','A Fateful Yarn of a Womanizer And a Feminist who must Succumb a Database Administrator in Ancient India'); INSERT INTO film VALUES(30,'ANYTHING SAVANNAH','A Epic Story of a Pastry Chef And a Woman who must Chase a Feminist in An Abandoned Fun House'); INSERT INTO film VALUES(31,'APACHE DIVINE','A Awe-Inspiring Reflection of a Pastry Chef And a Teacher who must Overcome a Sumo Wrestler in A U-Boat'); INSERT INTO film VALUES(32,'APOCALYPSE FLAMINGOS','A Astounding Story of a Dog And a Squirrel who must Defeat a Woman in An Abandoned Amusement Park'); INSERT INTO film VALUES(33,'APOLLO TEEN','A Action-Packed Reflection of a Crocodile And a Explorer who must Find a Sumo Wrestler in An Abandoned Mine Shaft'); INSERT INTO film VALUES(34,'ARABIA DOGMA','A Touching Epistle of a Madman And a Mad Cow who must Defeat a Student in Nigeria'); INSERT INTO film VALUES(35,'ARACHNOPHOBIA ROLLERCOASTER','A Action-Packed Reflection of a Pastry Chef And a Composer who must Discover a Mad Scientist in The First Manned Space Station'); INSERT INTO film VALUES(36,'ARGONAUTS TOWN','A Emotional Epistle of a Forensic Psychologist And a Butler who must Challenge a Waitress in An Abandoned Mine Shaft'); INSERT INTO film VALUES(37,'ARIZONA BANG','A Brilliant Panorama of a Mad Scientist And a Mad Cow who must Meet a Pioneer in A Monastery'); INSERT INTO film VALUES(38,'ARK RIDGEMONT','A Beautiful Yarn of a Pioneer And a Monkey who must Pursue a Explorer in The Sahara Desert'); INSERT INTO film VALUES(39,'ARMAGEDDON LOST','A Fast-Paced Tale of a Boat And a Teacher who must Succumb a Composer in An Abandoned Mine Shaft'); INSERT INTO film VALUES(40,'ARMY FLINTSTONES','A Boring Saga of a Database Administrator And a Womanizer who must Battle a Waitress in Nigeria'); INSERT INTO film VALUES(41,'ARSENIC INDEPENDENCE','A Fanciful Documentary of a Mad Cow And a Womanizer who must Find a Dentist in Berlin'); INSERT INTO film VALUES(42,'ARTIST COLDBLOODED','A Stunning Reflection of a Robot And a Moose who must Challenge a Woman in California'); INSERT INTO film VALUES(43,'ATLANTIS CAUSE','A Thrilling Yarn of a Feminist And a Hunter who must Fight a Technical Writer in A Shark Tank'); INSERT INTO film VALUES(44,'ATTACKS HATE','A Fast-Paced Panorama of a Technical Writer And a Mad Scientist who must Find a Feminist in An Abandoned Mine Shaft'); INSERT INTO film VALUES(45,'ATTRACTION NEWTON','A Astounding Panorama of a Composer And a Frisbee who must Reach a Husband in Ancient Japan'); INSERT INTO film VALUES(46,'AUTUMN CROW','A Beautiful Tale of a Dentist And a Mad Cow who must Battle a Moose in The Sahara Desert'); INSERT INTO film VALUES(47,'BABY HALL','A Boring Character Study of a A Shark And a Girl who must Outrace a Feminist in An Abandoned Mine Shaft'); INSERT INTO film VALUES(48,'BACKLASH UNDEFEATED','A Stunning Character Study of a Mad Scientist And a Mad Cow who must Kill a Car in A Monastery'); INSERT INTO film VALUES(49,'BADMAN DAWN','A Emotional Panorama of a Pioneer And a Composer who must Escape a Mad Scientist in A Jet Boat'); 



select c.name , count(f.film_id) as amount
from film as f
inner join film_category as fc on f.film_id = fc.film_id
inner join category as c on fc.category_id = c.category_id
inner join (SELECT category_id FROM film_category GROUP BY category_id HAVING COUNT(category_id) >= 5) AS cc 
on c.category_id = cc.category_id
where f.description like '%robot%' 
group by c.name;




