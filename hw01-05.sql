
SELECT strftime('%Y-%m-%d', Ride_Date) AS Ride_Date, SUM(Num_Riders) AS Num_Riders
FROM Ridership
GROUP BY strftime('%Y-%m-%d', Ride_Date)
ORDER BY SUM(Num_Riders) ASC
Limit 1;