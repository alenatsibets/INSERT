--select * from film where title = 'Amélie'
--select * from language
--select * from film_actor
--select * from store

insert into film (title, description, release_year, language_id, rental_duration, rental_rate, length)
values
('Amélie', 'It is a 2001 romantic comedy film directed by Jean-Pierre Jeunet.', 2001,
(select language_id from language where name = 'French'), 2, 4.99, 123);

insert into actor (first_name, last_name)
values ('Audrey', 'Tautou'), ('Mathieu', 'Kassovitz'), ('André', 'Dussollier');

insert into film_actor (actor_id, film_id)
values ((select actor_id from actor where last_name = 'Tautou'),
		(select film_id from film where title = 'Amélie')),
		((select actor_id from actor where last_name = 'Kassovitz'),
		 (select film_id from film where title = 'Amélie')),
		 ((select actor_id from actor where last_name = 'Dussollier'),
		  (select film_id from film where title = 'Amélie'));
		  
insert into inventory (film_id, store_id)
values ((select film_id from film where title = 'Amélie'), 1);
