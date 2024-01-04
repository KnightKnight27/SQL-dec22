SELECT * FROM sakila.film;
use sakila;

insert into film(title,description,release_year,language_id,
rental_duration,rental_rate,length,replacement_cost,rating
)
values ("Dark knight","dc movies",2023,2 ,3,10,125,200,'PG'),
("Smile","horro movie",2023,2 ,3,10,125,200,'PG');
# 1 2
# imagine that someone inserted a column in future between 
# title| description
# readability is good when you specify the column order while inserting
# handles those cases where columns are added or deleted
# 
insert into film values
(default,"Friends","NA",2004,2,null,10,1.50,150,20,'R',null,now());
# INSERT A NEW FILM in this table 
# INSERT INTO TABLE(col1,col2,col3) values(val1,val2,val3)
# Smile 
#BREAK  10:25 PM IST 

# READ
# * all the rows all the columns 
select * from film;

select title from film;
select title,release_year from film;
#DISTINCT CLAUSE 
# SELECT WORKS LIKE PRINT
# FROM works like a for LOOP                                                                 
select title from film;
select distinct release_year from film;

select * from film;
select 20*30;
select title,"hello" from film;
select "HELLO WORLD!";
select * from film;
select title,length/60 from film;
# 6. 2
# 3 times
# FOR ALL THE MOVIES PRINT HOW MANY TIMES YOU CAN WATCH IT DURING THE
# RENTAL
select "hello worlds";
SELECT *,FLOOR(rental_duration/(length/60)) as times_watched 
from film;

select title,rating,release_year from film where rating in ('G','Pg');
