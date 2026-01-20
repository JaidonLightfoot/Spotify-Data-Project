#popularity and artists
#poplarity in relation to the artist
SELECT
    popularity_bucket,
    AVG(artist_followers) AS avg_artist_followers,
    COUNT(*) AS track_count
FROM tracks_clean
GROUP BY popularity_bucket
ORDER BY avg_artist_followers DESC;

# percentage of high populairty songs
SELECT
    artist_name,
    COUNT(*) AS total_tracks,
    SUM(popularity_bucket = 'High') AS high_pop_tracks,
    ROUND(SUM(popularity_bucket = 'High') / COUNT(*) * 100, 2) AS high_pop_percentage
FROM tracks_clean
GROUP BY artist_name
HAVING total_tracks >= 5
ORDER BY high_pop_percentage DESC;

