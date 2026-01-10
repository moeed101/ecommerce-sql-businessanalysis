CREATE TABLE clean_orders AS
SELECT *
FROM orders
WHERE quantity > 0
  AND unit_price > 0
  AND customer_id IS NOT NULL;
