--1
select*   from Customers

--2
select distinct country
from Customers

--3
select* from Customers
where CustomerID like 'BL%'

--4
select top 100* from Orders

--5
select*
from Customers
where PostalCode = '1010' or PostalCode = '3012' or PostalCode = '12209' or PostalCode =  '05023'

--6
select* from orders where ShipRegion is not null

--7
select* from Customers order by Country, City

--8
GO

INSERT INTO [dbo].[Customers]
           ([CustomerID]
           ,[CompanyName]
           ,[ContactName]
           ,[ContactTitle]
           ,[Address]
           ,[City]
           ,[Region]
           ,[PostalCode]
           ,[Country]
           ,[Phone]
           ,[Fax])
     VALUES
           ('CHH','VeeTech','Darius','BossMan','19238 Detroit Ave','Detroit','MI','48228','USA','3133390211','Null')

Go
--9
USE [Northwind]
GO

UPDATE [dbo].[Orders]
   SET
 [ShipRegion] = 'EuroZone'
 WHERE ShipCountry= 'france'
GO

--10
USE [Northwind]
GO

delete FROM [dbo].[Order Details]
      WHERE Quantity=1
GO

--11
select AVG(quantity),MAX(Quantity),MIN(Quantity)
from [Order Details]

--12
select AVG(quantity) as 'Average',MAX(Quantity) as 'Max',MIN(Quantity)as 'Min'
from [Order Details] group by OrderID

--13
select customerID
from Orders
where OrderID=10290

--14

SELECT *
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID

SELECT *
FROM Customers
left JOIN Orders
ON Customers.CustomerID=Orders.CustomerID


SELECT Customers.CompanyName, Orders.CustomerID
FROM Customers
right JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
--15

select Employees.FirstName
from Employees
where ReportsTo is null

--16
select Employees.FirstName
from Employees
where ReportsTo = 2