SELECT COUNT(FlightId)
FROM flights;

SELECT Origin, AVG (DepDelay) AS Departure_delay, AVG (ArrDelay) AS Arrival_delay
FROM flights
GROUP BY Origin ASC;

SELECT 
    Origin, colYear, colMonth, AVG(ArrDelay) AS Delay
FROM
    flights
GROUP BY Origin ASC , colYear ASC , colMonth ASC;

SELECT 
    usairports.City,
    flights.colYear,
    flights.colMonth,
    AVG(flights.ArrDelay) AS Arrival_Delay
FROM
    flights
        LEFT JOIN
    usairports ON flights.Origin = usairports.IATA
GROUP BY flights.Origin ASC , flights.colYear ASC , flights.colMonth ASC;

SELECT COUNT(flights.Cancelled) AS Cancelled, carriers.Description
FROM flights
JOIN carriers
ON flights.UniqueCarrier=carriers.CarrierCode
GROUP BY carriers.Description
ORDER BY COUNT(flights.Cancelled) DESC;

SELECT SUM(Distance), UniqueCarrier
FROM Flights
GROUP BY UniqueCarrier
ORDER BY SUM(Distance) DESC LIMIT 10;

SELECT UniqueCarrier, AVG(ArrDelay)FROM flights 
GROUP BY ArrDelay 
HAVING(ArrDelay) >=10
ORDER BY(ArrDelay) ASC;

