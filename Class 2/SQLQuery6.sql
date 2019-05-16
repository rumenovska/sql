SELECT *
FROM [Employee]
WHERE [FirstName]= 'Goran'
GO
SELECT *
FROM [Employee]
WHERE [LastName] LIKE 'S%'
GO
SELECT *
FROM Employee
WHERE DateOfBirth > '01.01.1988'
GO
SELECT *
FROM Employee
WHERE Gender  = 'M'
GO
SELECT *
FROM Employee
WHERE HireDate >= '1998-01-01' AND HireDate <= '1998-01-31'
GO
SELECT *
FROM Employee
WHERE LastName LIKE 'T%' AND HireDate >= '2006-01-01' AND HireDate <= '2006-01-31'
GO
SELECT *
FROM Employee
ORDER BY FirstName DESC
GO
SELECT *
FROM Employee
ORDER BY FirstName ASC
GO
SELECT *
FROM Employee
WHERE FirstName = 'Aleksandar'
ORDER BY LastName
GO
SELECT *
FROM Employee
WHERE Gender = 'M'
ORDER BY HireDate DESC
GO
SELECT FirstName, LastName
FROM Employee
UNION ALL
SELECT FirstName, LastName
FROM Employee
GO
SELECT FirstName, LastName
FROM Employee
UNION 
SELECT FirstName, LastName
FROM Employee
GO
SELECT FirstName, LastName
FROM Employee
WHERE FirstName = 'Aleksandar'
INTERSECT 
SELECT FirstName, LastName
FROM Employee
WHERE LastName = 'Ivanovski'
GO
SELECT Name
FROM BusinessEntity
UNION ALL
SELECT Name
FROM Customer
GO
SELECT Region
FROM BusinessEntity
UNION
SELECT RegionName
FROM Customer
GO
SELECT Region
FROM BusinessEntity
INTERSECT
SELECT RegionName
FROM Customer
GO



