use sakila;

-- task 1--
select name from category where category_id=(select category_id from film_category where film_id= (select film_id from film order by rental_rate desc limit 1));

-- task 2--
select actor_id from film_actor where film_id=(select film_id from film order by replacement_cost limit 1);

-- task 3--
select rental_rate *rental_duration as revenue_in_dollars,film_id from film;

-- task 4--
SELECT count(film_actor.actor_id), actor.first_name, actor.last_name FROM actor INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id GROUP BY film_actor.actor_id;

-- task 5--
select g.rental_rate*g.rental_duration as revenue ,a.film_id,c.name  from film g inner join actor a inner join film_category f on a.film_id=f.film_id inner join category c on f.category_id=c.category_id order by revenue asc limit 1;
