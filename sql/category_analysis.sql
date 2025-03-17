-- Top 5 categories with the highest average ratings
SELECT Category_shorten,
AVG(rating) AS avg_rating,
COUNT(*) AS total_products
FROM 'amazon_clean.csv'
GROUP BY Category_shorten
ORDER BY avg_rating DESC
LIMIT 5;

-- Identify underperforming categories (rating < overall avg)
SELECT Category_shorten,
AVG(rating) AS avg_rating
FROM 'amazon_clean.csv'
GROUP BY Category_shorten
HAVING AVG(rating) < (SELECT AVG(rating) FROM 'amazon_clean.csv');