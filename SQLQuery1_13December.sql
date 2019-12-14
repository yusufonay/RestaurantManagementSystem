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
	ContactNumber BIGINT 
);
DROP TABLE RestaurantManagementSystem.Customers

CREATE TABLE RestaurantManagementSystem.Manager (
	ID				INT NOT NULL
		CONSTRAINT ManagerId PRIMARY KEY,
	Name			VARCHAR(100) NOT NULL,
	ContactNumber     BIGINT NOT NULL,
);
DROP TABLE RestaurantManagementSystem.Manager

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
	Description			VARCHAR(5000) NOT NULL,
	Price MONEY  NOT NULL,
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

SELECT * FROM RestaurantManagementSystem.Customers
insert into RestaurantManagementSystem.Customers (ID, Name, ContactNumber) values (55, 'Aida Joron', '3404168679');
insert into RestaurantManagementSystem.Customers (ID, Name, ContactNumber) values (60, 'Homerus Bruins', '2983001553');
insert into RestaurantManagementSystem.Customers (ID, Name, ContactNumber) values (82, 'Brier Iiannone', '6392602776');
insert into RestaurantManagementSystem.Customers (ID, Name, ContactNumber) values (88, 'Stepha Dumbleton', '9006489052');

SELECT * FROM RestaurantManagementSystem.Manager
insert into RestaurantManagementSystem.Manager (ID, Name, ContactNumber) values (55, 'Lorry Todhunter', '8656274683');
insert into RestaurantManagementSystem.Manager (ID, Name, ContactNumber) values (97, 'Gerik Drowsfield', '7752719347');
insert into RestaurantManagementSystem.Manager (ID, Name, ContactNumber) values (62, 'Diego Stringer', '7171546403');

SELECT * FROM RestaurantManagementSystem.Orders
insert into RestaurantManagementSystem.Orders (OrderNumber, NumberofItems) values (89, 88);
insert into RestaurantManagementSystem.Orders (OrderNumber, NumberofItems) values (2, 69);
insert into RestaurantManagementSystem.Orders (OrderNumber, NumberofItems) values (28, 42);
insert into RestaurantManagementSystem.Orders (OrderNumber, NumberofItems) values (49, 92);
insert into RestaurantManagementSystem.Orders (OrderNumber, NumberofItems) values (67, 44);
insert into RestaurantManagementSystem.Orders (OrderNumber, NumberofItems) values (52, 14);

SELECT * FROM RestaurantManagementSystem.Cheff
insert into RestaurantManagementSystem.Cheff (ID, Name) values (21, 'Kitti Malden');
insert into RestaurantManagementSystem.Cheff (ID, Name) values (16, 'Steffen Howells');
insert into RestaurantManagementSystem.Cheff (ID, Name) values (66, 'Mindy Zorzutti');
insert into RestaurantManagementSystem.Cheff (ID, Name) values (74, 'Hagen Emerton');
insert into RestaurantManagementSystem.Cheff (ID, Name) values (41, 'Robin Reeds');

SELECT * FROM RestaurantManagementSystem.Waiters
insert into RestaurantManagementSystem.Waiters (ID, Name) values (29, 'Ariella Cattle');
insert into RestaurantManagementSystem.Waiters (ID, Name) values (13, 'Esther Archbould');
insert into RestaurantManagementSystem.Waiters (ID, Name) values (48, 'Edouard Roser');
insert into RestaurantManagementSystem.Waiters (ID, Name) values (50, 'Dorine Tirone');
insert into RestaurantManagementSystem.Waiters (ID, Name) values (7, 'Sallee Exley');
insert into RestaurantManagementSystem.Waiters (ID, Name) values (72, 'Livy Lindback');
insert into RestaurantManagementSystem.Waiters (ID, Name) values (59, 'Dannel Hawksley');

DROP TABLE  RestaurantManagementSystem.Items
SELECT * FROM RestaurantManagementSystem.Items
insert into RestaurantManagementSystem.Items (ItemNumber, Description, Price, Quantity) values (1, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', '$7.19', 92);
insert into RestaurantManagementSystem.Items (ItemNumber, Description, Price, Quantity) values (30, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', '$5.58', 4);
insert into RestaurantManagementSystem.Items (ItemNumber, Description, Price, Quantity) values (49, 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', '$3.65', 73);
insert into RestaurantManagementSystem.Items (ItemNumber, Description, Price, Quantity) values (44, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', '$1.84', 63);
insert into RestaurantManagementSystem.Items (ItemNumber, Description, Price, Quantity) values (63, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', '$1.90', 67);
insert into RestaurantManagementSystem.Items (ItemNumber, Description, Price, Quantity) values (64, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', '$4.97', 97);

