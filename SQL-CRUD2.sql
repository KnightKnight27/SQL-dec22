SELECT * FROM sakila.film;
use sakila;
-- PRINT ALL MOVIES WHO HAVE DESCRIPTION NULL 
select * from film where description is NULL;

select * from film;
select * from film where 
description not like 'a%';
-- looking for all the movies who have decription
-- not starting with letter a 
-- NULL 
-- null is blank
-- null is 0 or empty 
-- null is an empty box
select null != null;
select 2 = 2;
select title,release_year 
    from film order by release_year;
select title,relea se_year 
    from film order by release_year desc;

-- I WANT TO SEE ALL THE MOVIES 
-- SORTED ACCORDING TO RELEASE_YEAR
-- IF TWO MOVIES HAVE THE SAME RELEASE_YEAR
-- I WANT TO SEE MOVIE WITH LESSER RENTAL_RATE 
-- FIRST 

# title.   release_year rental_rate
# SALAAR   2023           1.5 
# KGF      2023           1.2 
# 3Idiots  2010           1.4 
# Malang.  2015.          2.0

select film_id from film order by release_year;

select film_id,title,release_year,rental_rate 
from film order by release_year asc,
rental_rate desc;
-- rows starting from 10th
select * from film limit 20,20;
select * from film limit 20 offset 20;
-- limit how many rows
-- offset where you have to start from
# sorted on pK
-- both release_year is same and rental_rate
-- by default tie breaker 
-- handled using PRIMARY KEY

# 3 IDIOTS 
# MALANG
# kgf
# salaar
--  name.      psp 
-- 1. Kartik    98 
-- 2. ankit.   24 
-- 3. seema.   96
-- 4. lakshmi.  NULL
select * from students where psp != 98 or psp is NULL;
