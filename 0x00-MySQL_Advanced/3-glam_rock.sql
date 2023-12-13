-- script that lists all bands with Glam rock as their main style, ranked by their longevity
-- COALESCE replaces NULL values with 2020

SELECT band_name,
  COALESCE(split, 2020) - formed as lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
