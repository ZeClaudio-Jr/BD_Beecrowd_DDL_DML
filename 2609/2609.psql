SELECT x.name, SUM(prod.amount)
FROM categories x INNER JOIN products prod
    ON x.id = prod.id_categories
GROUP BY x.name
