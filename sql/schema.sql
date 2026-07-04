USE retail_db;

-- ===========================================================
-- RETAIL ANALYTICS DATABASE SCHEMA
-- =========================================================== 

-- 1. Calendar table
CREATE TABLE calendar(
id INT AUTO_INCREMENT PRIMARY KEY,
dates DATE,
weather_condition VARCHAR(10),
holiday_or_promotion INT,
seasonality VARCHAR(10)
);
