
SELECT Num_Riders
FROM (SELECT strftime('%Y', Ride_Date) AS Year, SUM(Num_Riders) AS Num_Riders, Station_Name
FROM Ridership
JOIN Stations
ON Ridership.Station_ID = Stations.Station_ID
GROUP BY Year, Station_Name)
WHERE Station_Name = "O'Hare Airport" AND Year = '2019';

SELECT Num_Riders
FROM (SELECT strftime('%Y', Ride_Date) AS Year, SUM(Num_Riders) AS Num_Riders, Station_Name
FROM Ridership
JOIN Stations
ON Ridership.Station_ID = Stations.Station_ID
GROUP BY Year, Station_Name)
WHERE Station_Name = "O'Hare Airport" AND Year = '2020';
