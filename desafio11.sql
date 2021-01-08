SELECT c.ContactName AS Nome,
c.Country AS País,
COUNT(p.Country) - 1 AS `Número de compatriotas`
FROM w3schools.customers AS c
INNER JOIN w3schools.customers AS p
ON c.Country = p.Country
GROUP BY c.CustomerID
HAVING `Número de compatriotas` <> 0
ORDER BY Nome;
