-- Query to summarize average price difference for each category
SELECT Category_shorten,
AVG(price_difference) AS avg_price_difference
FROM 'amazon_clean.csv'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

-- Query to analyze distribution of products across price categories
SELECT price_diff_category,
COUNT(*) AS product_count
FROM 'amazon_clean.csv'
GROUP BY 1
ORDER BY 2 DESC;