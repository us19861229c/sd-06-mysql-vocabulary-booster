SELECT customers.ContactName AS 'Nome de contato', ShipperName AS 'Empresa que fez o envio', orders.OrderDate AS 'Data do pedido' FROM w3schools.customers AS customers INNER JOIN w3schools.orders AS orders ON customers.CustomerID = orders.CustomerID INNER JOIN w3schools.shippers as shippers ON orders.ShipperID = shippers.ShipperID WHERE ShipperName = 'Speedy Express' OR 'United Package' ORDER BY `Nome de contato`, `Data do pedido`;