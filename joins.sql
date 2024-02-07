SELECT * 
FROM owners 
FULL OUTER JOIN vehicles ON owners.id = vehicles.id;



SELECT first_name, last_name, COUNT(owner_id)
FROM owners
JOIN vehicles ON owners.id = vehicles.id
GROUP BY (first_name, last_name)
ORDER BY first_name;


SELECT first_name, last_name, ROUND(AVG(price)) as average_price, COUNT(owner_id)
FROM owners 
JOIN vehicles ON owners.id = vehicles.id
GROUP BY (first_name, last_name)
HAVING 
COUNT(owner_id) > AND Round(AVG(price)) > 10000
ORDER BY first_name DESC;