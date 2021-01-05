SELECT P.ProductName AS `Produto`,
MIN(OD.Quantity) AS `Mínima`,
MAX(OD.Quantity) AS `Máxima`,
ROUND(AVG(OD.Quantity), 2) AS `Média`
FROM w3schools.products AS P,
w3schools.order_details AS OD
WHERE P.ProductID = OD.ProductID
GROUP BY OD.ProductID
HAVING ROUND(AVG(OD.QUANTITY), 2) > 20.00
ORDER BY `Média`, `Produto`;