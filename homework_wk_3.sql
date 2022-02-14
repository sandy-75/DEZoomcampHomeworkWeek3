-- Homework Question 1
SELECT COUNT(*)
FROM trips_data_all.external_fhv_tripdata_2019;
    --  (returns 42084899)

-- Homework Question 2
SELECT COUNT(DISTINCT dispatching_base_num) AS num_dist_base_nums
FROM trips_data_all.external_fhv_tripdata_2019;
    --  (returns 792)

-- Homework Question 3
-- partitioning and clustering although this does
-- depend on the size of the data you are dealing
-- with. 
-- If they are large enough then partitioning and
-- clustering should help. However, if they aren't
-- partitioning and clustering will add their own
-- overhead resulting in queries that aren't so
-- efficient

-- Homework Question 4
-- B00987
SELECT COUNT(*)
FROM 'dtc-de-339104.trips_data_all.external_tripdata_2019_partitioned_clustered'
WHERE DATE(dropoff_datetime) BETWEEN '2019-01-01'  AND '2019-03-31'
AND dispatching_base_num = 'B00987'
    --  (returns count=6427, estimated=400.1MB, actual=120.6MB)

-- B02060
SELECT COUNT(*)
FROM 'dtc-de-339104.trips_data_all.external_tripdata_2019_partitioned_clustered'
WHERE DATE(dropoff_datetime) BETWEEN '2019-01-01'  AND '2019-03-31'
AND dispatching_base_num = 'B02060'
    --  (returns count=19330, estimated=400.1MB, actual=132.2MB)

-- B02279
SELECT COUNT(*)
FROM 'dtc-de-339104.trips_data_all.external_tripdata_2019_partitioned_clustered'
WHERE DATE(dropoff_datetime) BETWEEN '2019-01-01'  AND '2019-03-31'
AND dispatching_base_num = 'B02279'
    --  (returns count=886, estimated=400.1MB, actual=132.2MB)

-- Homework Question 5
-- Cluster on dispatch_num see https://learningdataengineering540969211.wordpress.com/2022/02/14/week-3-de-zoomcamp-3-1-1-homework/

-- Homework Question 6
-- Not a lot but some... see above blog for explanation

-- Homework Question 7
-- Columnar format in Capacitor ... see above blog
