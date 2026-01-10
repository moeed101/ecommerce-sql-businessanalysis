-- Monthly revenue across all data
SELECT
  YEAR(invoice_date) AS year,
  MONTH(invoice_date) AS month,
  ROUND(SUM(quantity * unit_price), 2) AS revenue
FROM clean_orders
GROUP BY YEAR(invoice_date), MONTH(invoice_date)
ORDER BY year, month;

-- Monthly revenue for 2011
SELECT
  MONTH(invoice_date) AS month,
  ROUND(SUM(quantity * unit_price), 2) AS revenue
FROM clean_orders
WHERE YEAR(invoice_date) = 2011
GROUP BY MONTH(invoice_date)
ORDER BY month;
