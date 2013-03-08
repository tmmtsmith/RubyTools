/* 

This is a stored procedure used to pass the Ruby data returned from transform.rb into SQL Server

*/

CREATE PROCEDURE stp_InsertTransform
	@FirstName VARCHAR(25),
	@Phone VARCHAR(20),
	@Zip INT,
	@Legislators VARCHAR(500)
AS
BEGIN
INSERT INTO TransformTable
VALUES (@FirstName, @Phone, @Zip, @Legislators)
END