SELECT
COUNT(IF(MATCH (keywords) AGAINST (:query IN NATURAL LANGUAGE MODE), 1, NULL))
AS count
FROM photoquestsearch, photoquest
WHERE photoquest.id = photoquestsearch.photoquestId
::where
LIMIT 0, 100