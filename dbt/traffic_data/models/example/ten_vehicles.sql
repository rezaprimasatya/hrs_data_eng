{{ config(materialized='view') }}

with ten_vehicles as (
    SELECT id, track_id, lat, lon, speed
    FROM vehicles
    ORDER BY speed DESC
    LIMIT 10
)


SELECT * FROM ten_vehicles
    