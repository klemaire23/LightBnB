SELECT properties.id, title, cost_per_night, AVG(property_reviews.rating) AS avg_rating
FROM properties
LEFT JOIN property_reviews ON properties.id = property_id
WHERE city like '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night ASC
LIMIT 10;