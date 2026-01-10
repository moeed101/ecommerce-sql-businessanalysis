-- Top products by revenue during November 2011
SELECT
  stock_code,
  description,
  ROUND(SUM(quantity * unit_price), 2) AS revenue
FROM clean_orders
WHERE YEAR(invoice_date) = 2011
  AND MONTH(invoice_date) = 11
GROUP BY stock_code, description
ORDER BY revenue DESC
LIMIT 10;
