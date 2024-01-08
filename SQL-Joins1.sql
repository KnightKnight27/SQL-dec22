use sakila;
select * from film;
update film set release_year = 2005 where film_id = 7;
-- Switched my safe mode 
-- safe mode is not letting us update all the rows
update film set original_language_id = 1;
update film set description = "something",release_year = 2007 where
film_id = 4  ;

delete from film where film_id = 1008;
-- deletes all rows
delete from film;

SELECT * FROM sakila.film;
-- print movie name with language 
use sakila;
-- imagine joins like nested for loops with a condition
select film.title,language.name from film join language 
on film.language_id < language.language_id;
