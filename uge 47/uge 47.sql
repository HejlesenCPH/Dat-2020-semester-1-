Use sakila; 
select * from actor;
select * from actor where last_name = "Cage"; 
select * from actor where not last_name = "ZERO" or last_name = "NICK";
select * from actor where first_name in ("NICK", "JOHNNY", "JAMES", "MORGAN", "WHOOPI");
select * from actor where actor_id >50 and actor_id < 150;
select * from actor where first_name like "C%";
select * from actor where first_name order by first_name; 
select * from actor where first_name order by last_name Desc; 
SELECT COUNT(*) FROM actor; 
select distinct first_name from actor; 
select film_id, title from film where film_id in ( select film_id from film_category where category_id in (select category_id from category where name = "Horror"));
select f.film_id, f.title, c.name from film as f, film_category as fc, category as c where c.name = "Horror" and f.film-id = fc.film_id and fc.category_id = c.category_id;



-- 2--

insert into actor(actor_id, first_name, last_name, last_update) values( 201, "Sebastian", "Hejlesen", 19/12/2020);
select * from film_actor;
insert into film_actor(actor_id, film_id, last_update) values (201, 1, 19/11/2020);
insert into film_actor(actor_id, film_id, last_update) values (201, 5, 19/11/2020);
insert into film_actor(actor_id, film_id, last_update) values (201, 3, 19/11/2020);
insert into film_actor(actor_id, film_id, last_update) values (201, 6, 19/11/2020);
insert into film_actor(actor_id, film_id, last_update) values (201, 7, 19/11/2020);

update actor set first_name = "Flameboy", last_name = "Devilson" where actor_id = 201;

delete from film_actor where actor_id = 201;



select film.film_id, film.title, film_category.category_id, category.name from film
    join film_category on film.film_id = film_category.film_id
    join category on category.category_id = film_category.category_id
    where category.name = 'Horror';

