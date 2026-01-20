#business insights

SELECT
    FLOOR(release_year / 10) * 10 AS decade,
    popularity_bucket,
    COUNT(*) AS track_count
FROM tracks_clean
GROUP BY decade, popularity_bucket
ORDER BY decade ASC;


SELECT
    album_type,
    popularity_bucket,
    COUNT(*) AS track_count
FROM tracks_clean
GROUP BY album_type, popularity_bucket
ORDER BY album_type, popularity_bucket;


SELECT
    album_type,
    FLOOR(release_year / 10) * 10 AS decade,
    AVG(track_popularity) AS avg_track_popularity,
    COUNT(*) AS track_count
FROM tracks_clean
GROUP BY album_type, decade
ORDER BY decade ASC, avg_track_popularity DESC;
