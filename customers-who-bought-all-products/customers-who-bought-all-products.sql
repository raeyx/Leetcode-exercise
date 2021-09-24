SELECT customer_id
FROM customer c
GROUP BY customer_id
HAVING COUNT(DISTINCT c.product_key) = (SELECT COUNT(product_key) FROM product)
