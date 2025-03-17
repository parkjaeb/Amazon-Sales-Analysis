-- Query to summarize dataset structure
SELECT COUNT(*) AS total_rows, COUNT(DISTINCT product_id) AS unique_products
FROM 'amazon_clean.csv';

-- Remove null values from essential columns
DELETE FROM 'amazon_clean.csv'
WHERE rating IS NULL OR rating_count IS NULL;

-- Convert rating_count to an integer
UPDATE 'amazon_clean.csv'
SET rating_count = CAST(REPLACE(rating_count, ',', '') AS INT);