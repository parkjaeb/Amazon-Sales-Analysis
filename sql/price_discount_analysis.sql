-- Relationship between discount levels and average ratings
SELECT 
	CASE 
		WHEN discount_percentage*100 < 20 THEN 'Low Discount'
		WHEN discount_percentage*100 BETWEEN 20 AND 50 THEN 'Medium Discount'
		ELSE 'High Discount'
	END AS discount_rating,
	AVG(rating) AS avg_rating
FROM 'amazon_clean.csv'
GROUP BY 1
ORDER BY avg_rating DESC;

-- Do higher price differences result in better ratings?
SELECT price_difference,
AVG(rating) AS avg_rating
FROM 'amazon_clean.csv'
GROUP BY price_difference
ORDER BY price_difference DESC;