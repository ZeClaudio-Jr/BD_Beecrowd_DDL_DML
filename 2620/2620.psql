SELECT cl.name, ped.id
FROM customers cl INNER JOIN orders ped ON
    cl.id = ped.id_customers
WHERE ped.orders_date BETWEEN '2016-01-01' AND '2016-06-30'
