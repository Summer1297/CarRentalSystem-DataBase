/* Create views */
-- From customers' perspectives, show all the bills for each customer.
Create VIEW BillsForCustomer (CustomerName,DateIssued,TotalAmount)
AS SELECT concat(C.FirstName,' ', C.LastName), DateIssued, TotalAmount from Bill B
JOIN Rental R on  B.RentalID=R.RentalID
JOIN Customer C on R.CustomerID= C.CustomerID


-- Get the best renting colors for data analysis.
Create VIEW BestColors(Color,RentingTimes)
AS SELECT V.Color, count(*) FROM Rental R
JOIN Vehicle V ON R.VehicleID = V.VehicleID
GROUP BY V.Color

/* Add a table-level CHECK constraint to check if customer age is at least 16 */
-- create function to check if customer age is at least 16
CREATE FUNCTION IsValidCustomerAge (@age INT)
RETURNS BIT
AS
BEGIN
    DECLARE @IsValid BIT

    IF @age >= 16
        SET @IsValid = 1
    ELSE
        SET @IsValid = 0

    RETURN @IsValid
END

ALTER TABLE Customer
ADD CONSTRAINT CHK_CustomerAge CHECK (dbo.IsValidCustomerAge(Age) = 1);

/* Evaluate employee performance */
CREATE FUNCTION EvaluateEmployeePerformance (@Year INT, @Quarter INT)
RETURNS TABLE
AS
RETURN
(
    SELECT e.EmployeeID,
           SUM(r.RentalRate) AS TotalSalesAmount,
           RANK() OVER (ORDER BY SUM(r.RentalRate) DESC) AS Rank
    FROM Rental r
    INNER JOIN Rental_Employee re ON r.RentalID = re.RentalID
    INNER JOIN Employee e ON re.EmployeeID = e.EmployeeID
    WHERE YEAR(r.RentalStartDate) = @Year AND DATEPART(QUARTER, r.RentalStartDate) = @Quarter
    GROUP BY e.EmployeeID
)

--test 
SELECT * FROM EvaluateEmployeePerformance(2023, 2)