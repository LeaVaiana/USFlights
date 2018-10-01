SELECT COUNT(*) FROM Flights;
SELECT Origin, AVG(ArrDelay), AVG(DepDelay) FROM Flights GROUP BY Origin;
SELECT Origin, colYear, colMonth,  AVG(ArrDelay) FROM Flights GROUP BY colMonth, Origin, colYear;
SELECT USAirports.City, Flights.colYear, Flights.colMonth, AVG (ArrDelay) FROM flights, USAirports GROUP BY Flights.colYear, Flights.colMonth, USAirports.City;
SELECT UniqueCarrier, COUNT(*) AS CANCELLED FROM Flights WHERE Cancelled = 1 GROUP BY UniqueCarrier ORDER BY CANCELLED DESC;
SELECT TailNum, SUM(Distance) as sume FROM FLIGHTS group by TailNum ORDER BY sume desc LIMIT 10;
SELECT UniqueCarrier, AVG(ArrDelay) as DELAY from flights GROUP BY UniqueCarrier HAVING  delay >=10 order by 2 desc;