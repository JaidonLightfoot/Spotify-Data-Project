# artist 
SELECT
  artist_name,
  COUNT(*) AS track_count
FROM tracks_clean
WHERE artist_name IS NOT NULL
GROUP BY artist_name
ORDER BY track_count DESC
LIMIT 10;


SELECT
  artist_name,
  COUNT(*) AS track_count,
  ROUND(AVG(track_popularity), 2) AS avg_popularity
FROM tracks_clean
WHERE artist_name IS NOT NULL
  AND track_popularity IS NOT NULL
GROUP BY artist_name
HAVING COUNT(*) >= 5
ORDER BY track_count DESC;



SELECT
  artist_name,
  COUNT(*) AS high_pop_tracks
FROM tracks_clean
WHERE popularity_bucket = 'High'
  AND artist_name IS NOT NULL
GROUP BY artist_name
ORDER BY high_pop_tracks DESC
LIMIT 10;
