CREATE SCHEMA RestaurantManagementSystem -- Creating SCHEMA

CREATE TABLE RestaurantManagementSystem.Cashier (
	ID				INT NOT NULL
		CONSTRAINT id PRIMARY KEY,
	Name			VARCHAR(20) NOT NULL
);

CREATE TABLE RestaurantManagementSystem.Restaurant (
	ID				INT NOT NULL
		CONSTRAINT RestaurantId PRIMARY KEY,
	Name			VARCHAR(30) NOT NULL,		
	ContactNumber	VARCHAR (20)  NULL,
	Address		VARCHAR(200) NOT NULL	
);

CREATE TABLE RestaurantManagementSystem.Bill (
	Price MONEY   NOT NULL
		CONSTRAINT Price PRIMARY KEY,
	BillNumber	INT   NOT NULL,
	OrderDetails	INT 	 NOT NULL
);
	
CREATE TABLE RestaurantManagementSystem.Customers (
	ID		INT NOT NULL
		CONSTRAINT CustomerId PRIMARY KEY,
	Name VARCHAR (50) NOT NULL,
	ContactNumber INT 
);

CREATE TABLE RestaurantManagementSystem.Manager (
	ID				INT NOT NULL
		CONSTRAINT ManagerId PRIMARY KEY,
	Name			VARCHAR(100) NOT NULL,
	ContactNumber     INT NOT NULL,
);

CREATE TABLE RestaurantManagementSystem.Orders (
	OrderNumber			INT NOT NULL
		CONSTRAINT OrderNumber PRIMARY KEY,
	NumberofItems INT	 NOT NULL	
);

CREATE TABLE RestaurantManagementSystem.Cheff (
	ID				INT NOT NULL
		CONSTRAINT CheffId PRIMARY KEY,
	Name			VARCHAR(100) NOT NULL	
);

CREATE TABLE RestaurantManagementSystem.Waiters (
	ID				INT NOT NULL
		CONSTRAINT WaiterId PRIMARY KEY,
	Name			VARCHAR(50) NOT NULL	
);

CREATE TABLE RestaurantManagementSystem.Items (
	ItemNumber		INT NOT NULL
		CONSTRAINT ItemNumber PRIMARY KEY,
	Description			VARCHAR(50) NOT NULL,
	Price DECIMAL (20,3) NOT NULL,
	Quantity INT	NOT NULL
);
 
SELECT * FROM RestaurantManagementSystem.Cashier

insert into RestaurantManagementSystem.Cashier (ID, Name) values (1, 'Abbi Laird-Craig');
insert into RestaurantManagementSystem.Cashier (ID, Name) values (2, 'David Baldi');
insert into RestaurantManagementSystem.Cashier (ID, Name) values (3, 'Becky Kollas');
insert into RestaurantManagementSystem.Cashier (ID, Name) values (4, 'Oberon Dibling');
insert into RestaurantManagementSystem.Cashier (ID, Name) values (5, 'Alli Taffarello');

SELECT * FROM RestaurantManagementSystem.Restaurant

insert into RestaurantManagementSystem.Restaurant (ID, Name, ContactNumber, Address) values (1, 'Olenolin Mewett', '134-403-9366', '5872 Forest Circle');
insert into RestaurantManagementSystem.Restaurant (ID, Name, ContactNumber, Address) values (2, 'Adah McKernon', '830-232-0609', '090 Talmadge Alley');
insert into RestaurantManagementSystem.Restaurant (ID, Name, ContactNumber, Address) values (3, 'Merline Goudman', '502-244-1629', '7 Swallow Parkway');
insert into RestaurantManagementSystem.Restaurant (ID, Name, ContactNumber, Address) values (4, 'Vittoria d''Arcy', '992-364-9326', '00 Nova Crossing');
insert into RestaurantManagementSystem.Restaurant (ID, Name, ContactNumber, Address) values (5, 'Monty Mogra', '357-865-7107', '39 Shasta Park');
insert into RestaurantManagementSystem.Restaurant (ID, Name, ContactNumber, Address) values (6, 'Vilma Mozzetti', '346-921-1540', '4356 Sage Pass');
insert into RestaurantManagementSystem.Restaurant (ID, Name, ContactNumber, Address) values (7, 'Jade Vasic', '207-318-7237', '82 Center Way');
insert into RestaurantManagementSystem.Restaurant (ID, Name, ContactNumber, Address) values (8, 'Melania Gibbieson', '130-443-5474', '6705 Moose Pass');
insert into RestaurantManagementSystem.Restaurant (ID, Name, ContactNumber, Address) values (9, 'Henriette Mordie', '373-357-0878', '08 Rockefeller Center');
insert into RestaurantManagementSystem.Restaurant (ID, Name, ContactNumber, Address) values (10, 'Haydon Renner', '565-787-8237', '7015 Loeprich Center');
 DROP TABLE RestaurantManagementSystem.Restaurant

 SELECT * FROM RestaurantManagementSystem.Bill
 DROP TABLE RestaurantManagementSystem.Bill
 insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (26.99, 70, 71);
insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (19.9, 52, 39);
insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (85.19, 17, 4);
insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (74.27, 88, 57);
insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (46.02, 20, 57);
insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (68.75, 87, 27);
insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (76.1, 25, 41);
insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (44.33, 14, 31);
insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (89.08, 28, 17);
insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (15.42, 23, 79);
insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (64.97, 45, 51);
insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (40.53, 22, 46);
insert into RestaurantManagementSystem.Bill (Price, BillNumber, OrderDetails) values (25.97, 12, 58);