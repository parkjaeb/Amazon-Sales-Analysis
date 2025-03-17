-- Create discount effectiveness metric
ALTER TABLE 'amazon_clean.csv' ADD COLUMN discount_effectiveness FLOAT;
UPDATE 'amazon_clean.csv'
SET discount_effectiveness = price_difference / actual_price;

-- Cluster products into rating groups
SELECT 
    CASE 
        WHEN rating >= 4.5 THEN 'Highly Rated'
        WHEN rating BETWEEN 3.5 AND 4.4 THEN 'Moderate'
        ELSE 'Low Rated'
    END AS rating_category,
    COUNT(*) AS product_count
FROM 'amazon_clean.csv'
GROUP BY rating_category;