-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- two actor with the last name Wahlberg.

--2. How many payments were made between $3.99 and $5.99?
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;
-- none no data was found

--3. What film does the store have the most of? (search in inventory)
SELECT film_id, SUM(inventory_id)
FROM Inventory
GROUP BY film_id
ORDER BY SUM(inventory_id) DESC
LIMIT 1
-- the store has the film 1000 the most with 36620 copies.

--4.How many customers have the last name ‘William’?
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';
-- no customer has the last name william .

--5. What store employee (get the id) sold the most rentals?
SELECT staff_id, SUM(inventory_id)
FROM rental
GROUP BY staff_id
ORDER BY SUM(inventory_id)
LIMIT 1
-- staff_id number #2 sold 18348028 rentals

--6. How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;
-- there are 378 different district names.

--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, SUM(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY SUM(actor_id) DESC
LIMIT 1
 -- film_id 188 had a sum of 1688 actors in it.

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT first_name, last_name
FROM customer 
WHERE last_name LIKE '%es';
--using the wildcard and like cause i wsa able to find all the customers wiht a last name ending in 'es'

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

