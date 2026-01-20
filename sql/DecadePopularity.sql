#popularity over time
SELECT 
  FLOOR(release_year / 10) * 10 AS decade,
  popularity_bucket,
  COUNT(*) AS track_count
FROM tracks_clean
WHERE release_year IS NOT NULL
GROUP BY decade, popularity_bucket
ORDER BY decade, popularity_bucket;


SELECT
  decade,
  popularity_bucket,
  COUNT(*) AS track_count,
  ROUND(
    COUNT(*) * 100.0 /
    SUM(COUNT(*)) OVER (PARTITION BY decade),
    2
  ) AS percentage_of_decade
FROM (
  SELECT
    FLOOR(release_year / 10) * 10 AS decade,
    popularity_bucket
  FROM tracks_clean
) t
GROUP BY decade, popularity_bucket
ORDER BY decade, popularity_bucket;

