#genre insights

SELECT 
    artist_genres,
    COUNT(*) AS track_count
FROM tracks_clean
WHERE artist_genres <> 'Unknown'
GROUP BY artist_genres
ORDER BY track_count DESC
LIMIT 15;


SELECT 
    artist_genres,
    COUNT(*) AS high_popularity_tracks
FROM tracks_clean
WHERE popularity_bucket = 'High'
  AND artist_genres <> 'Unknown'
GROUP BY artist_genres
ORDER BY high_popularity_tracks DESC
LIMIT 15;


SELECT
    FLOOR(release_year / 10) * 10 AS decade,
    artist_genres,
    COUNT(*) AS track_count
FROM tracks_clean
WHERE artist_genres <> 'Unknown'
GROUP BY decade, artist_genres
ORDER BY track_count DESC;
