#num of tracks and artists
SELECT 
  COUNT(*) AS num_tracks,
  COUNT(DISTINCT artist_name) AS num_artists
FROM tracks_clean;

#min and max release years
SELECT 
  MIN(release_year) AS min_year,
  MAX(release_year) AS max_year
FROM tracks_clean;

#popularity bucket distribution
SELECT 
  popularity_bucket,
  COUNT(*) AS track_count
FROM tracks_clean
GROUP BY popularity_bucket
ORDER BY track_count DESC;



