SELECT id, movie, description, rating
FROM cinema
WHERE NOT description = 'boring' AND id%2 = 1
ORDER BY rating DESC;