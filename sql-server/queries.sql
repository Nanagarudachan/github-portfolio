-- Top 10 Kunden
SELECT TOP 10 CustomerID, SUM(TotalDue) AS Umsatz
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY Umsatz DESC;

-- Umsatz pro Monat
SELECT 
    YEAR(OrderDate) AS Jahr,
    MONTH(OrderDate) AS Monat,
    SUM(TotalDue) AS Umsatz
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY Jahr, Monat;

-- Durchschnittlicher Bestellwert
SELECT AVG(TotalDue) AS Durchschnitt
FROM Sales.SalesOrderHeader;
