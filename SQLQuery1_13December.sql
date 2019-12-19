USE master;
GO
DROP DATABASE RestaurantManagementSystem;
GO
CREATE DATABASE RestaurantManagementSystem;
GO
USE RestaurantManagementSystem;
GO
CREATE SCHEMA RestaurantManagementSystem -- Creating SCHEMA
GO

CREATE TABLE RestaurantManagementSystem.Cashier(
	ID		INT NOT NULL,
	Name  VARCHAR(20) NOT NULL
);

CREATE TABLE RestaurantManagementSystem.Restaurant (
	ID		INT NOT NULL,
	Name	VARCHAR(30) NOT NULL,		
	ContactNumber	VARCHAR (20)  NULL,
	Address		VARCHAR(200) NOT NULL	
);

CREATE TABLE RestaurantManagementSystem.Bill (
	Price MONEY   NOT NULL,
	BillNumber	INT   NOT NULL,
	OrderDetails	INT 	 NOT NULL
);
	
CREATE TABLE RestaurantManagementSystem.Customers (
	ID		INT NOT NULL,
		Address VARCHAR (200) NOT NULL,
	Name VARCHAR (50) NOT NULL,
	ContactNumber BIGINT 
);

CREATE TABLE RestaurantManagementSystem.Manager (
	ID				INT NOT NULL,
	Name			VARCHAR(100) NOT NULL,
	ContactNumber     BIGINT NOT NULL,
);
CREATE TABLE RestaurantManagementSystem.Orders (
	OrderNumber			INT NOT NULL,
	NumberofItems INT	 NOT NULL	
);

CREATE TABLE RestaurantManagementSystem.Cheff (
	ID				INT NOT NULL,
	Name			VARCHAR(100) NOT NULL	
);

CREATE TABLE RestaurantManagementSystem.Waiters (
	ID				INT NOT NULL,
	Name			VARCHAR(50) NOT NULL	
);

CREATE TABLE RestaurantManagementSystem.Items (
	ItemNumber		INT NOT NULL,
	Description			VARCHAR(5000) NOT NULL,
	Price MONEY  NOT NULL,
	Quantity INT	NOT NULL
);

ALTER TABLE RestaurantManagementSystem.Cashier
ADD CONSTRAINT CashierId CHECK (LEN (Name) > 0);

GO

ALTER TABLE RestaurantManagementSystem.Restaurant
ADD CONSTRAINT ValidName CHECK (LEN (Name) > 0);

GO

ALTER TABLE RestaurantManagementSystem.Restaurant
ADD CONSTRAINT ValidContactNumber CHECK (LEN(ContactNumber) > 0);

GO

ALTER TABLE RestaurantManagementSystem.Restaurant
ADD CONSTRAINT ValidAddress CHECK (LEN(Address) > 0);

GO

ALTER TABLE RestaurantManagementSystem.Bill
ADD CONSTRAINT ValidBillNumber CHECK (BillNumber >2);

GO

ALTER TABLE RestaurantManagementSystem.Bill 
ADD CONSTRAINT ValidOrderDetails CHECK (LEN (OrderDetails) > 0);

GO

ALTER TABLE RestaurantManagementSystem.Manager
ADD CONSTRAINT Valid_Name CHECK (LEN (Name) > 0);

GO

ALTER TABLE RestaurantManagementSystem.Manager 
ADD CONSTRAINT Valid_ContactNumber CHECK (LEN (ContactNumber) > 2);

GO

ALTER TABLE RestaurantManagementSystem.Customers 
ADD CONSTRAINT Valid1_Name CHECK (LEN (Name) > 2);

GO

ALTER TABLE RestaurantManagementSystem.Customers 
ADD CONSTRAINT Phone_Address CHECK (LEN (Address) > 0);

GO

ALTER TABLE RestaurantManagementSystem.Customers
ADD CONSTRAINT Valid_Contact_Number CHECK (LEN (ContactNumber) >= 10);

GO

ALTER TABLE RestaurantManagementSystem.Orders
ADD CONSTRAINT ValidNumberofItems CHECK (LEN (NumberofItems) > 1);

GO

ALTER TABLE RestaurantManagementSystem.Cheff
ADD CONSTRAINT ValidCheff_Name CHECK (LEN (Name) >3); 

GO

ALTER TABLE RestaurantManagementSystem.Waiters
ADD CONSTRAINT Valid_WaiterName CHECK (LEN (Name) >3 );

GO

ALTER TABLE RestaurantManagementSystem.Items
ADD CONSTRAINT ValidQuantity CHECK ( LEN (Quantity) > 0);

GO

ALTER TABLE RestaurantManagementSystem.Items
ADD CONSTRAINT Valid_Description CHECK (LEN (Description) > 1);

GO

ALTER TABLE RestaurantManagementSystem.Items
ADD CONSTRAINT ValidPrice CHECK ( (Price) > 0);

GO

SELECT * FROM RestaurantManagementSystem.Cashier
SELECT * FROM RestaurantManagementSystem.Restaurant
SELECT * FROM RestaurantManagementSystem.Bill
SELECT * FROM RestaurantManagementSystem.Customers
SELECT * FROM RestaurantManagementSystem.Manager
SELECT * FROM RestaurantManagementSystem.Orders
SELECT * FROM RestaurantManagementSystem.Cheff
SELECT * FROM RestaurantManagementSystem.Waiters
SELECT * FROM RestaurantManagementSystem.Items


