CREATE DATABASE retail_db;
USE retail_db;

-- =============================================================
-- RETAIL ANALYTICS DATABSE SCHEMA
-- ==============================================================

-- 1. Calendar table
CREATE TABLE calendar(
date_id DATE PRIMARY KEY,
weather_condition VARCHAR(20),
is_holiday INT,
promotion INT,
seasonality VARCHAR(20)
);

-- 2. Products  table
CREATE TABLE products
(product_id VARCHAR(10) PRIMARY KEY,
category VARCHAR(30),
price DECIMAL(10,2),
competitor_price DECIMAL(10,2)
);

-- 3. Stores table
CREATE TABLE stores
(store_id VARCHAR(10) PRIMARY KEY,
region VARCHAR(20)
);

-- 4. Inventory table
CREATE TABLE inventory(
inventory_id INT PRIMARY KEY,
date_id DATE,
store_id VARCHAR(10),
product_id VARCHAR(10),
inventory_level INT,
units_ordered INT,
demand_forecast DECIMAL(10,2),
FOREIGN KEY(product_id) REFERENCES products(product_id),
FOREIGN KEY(store_id) REFERENCES stores(store_id)
);

-- 5. Sales table
CREATE TABLE sales(
sales_id INT PRIMARY KEY,
date_id DATE,
store_id VARCHAR(10),
product_id VARCHAR(10),
units_sold INT,
discount INT,
FOREIGN KEY(product_id) REFERENCES products(product_id),
FOREIGN KEY(store_id) REFERENCES stores(store_id) 
);
