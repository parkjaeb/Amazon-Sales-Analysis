-- Identify users with the highest review activity
SELECT user_id,
	COUNT(review_id) AS total_reviews
FROM 'amazon_clean.csv'
GROUP BY user_id
ORDER BY total_reviews DESC
LIMIT 5;

-- Query to understand sentiment in reviews (using 'good' vs. 'bad' keywords)
SELECT  
    'good' AS keyword,
	COUNT(*) AS frequency
FROM 'amazon_clean.csv'
WHERE review_content LIKE '%good%'
UNION ALL
SELECT 
    'bad' AS keyword,
	COUNT(*) AS frequency
FROM 'amazon_clean.csv'
WHERE review_content LIKE '%bad%';