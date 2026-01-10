CREATE DATABASE IF NOT EXISTS online_retail;
USE online_retail;

CREATE TABLE orders (
  invoice_no VARCHAR(20),
  stock_code VARCHAR(20),
  description VARCHAR(255),
  quantity INT,
  invoice_date DATETIME,
  unit_price DECIMAL(10,2),
  customer_id INT,
  country VARCHAR(100)
);
