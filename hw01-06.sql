
SELECT strftime('%Y-%m-%d', Ride_Date) AS Ride_Date, SUM(Num_Riders) AS Num_Riders
FROM Ridership
WHERE strftime('%Y', Ride_Date) BETWEEN '2010' AND '2020'
AND strftime('%m', Ride_Date) = '12'
AND strftime('%d', Ride_Date) = '25'
GROUP BY strftime('%Y-%m-%d', Ride_Date)
ORDER BY strftime('%Y-%m-%d', Ride_Date) DESC;