SELECT pd.id, pd.name
FROM products pd INNER JOIN categories C ON
    pd.id_categories = c.id
WHERE LOWER(c.name) LIKE 'super%'
