CREATE TABLE Delivery (
Delivery_ID INT IDENTITY(1,1) 
PRIMARY KEY,
Delivery_Date DATE,
Delivery_Time TIME

);

CREATE TABLE Products (
Product_ID CHAR (2) PRIMARY KEY,
Product_Name VARCHAR (40) DEFAULT NULL,
Delivery_ID INT NOT NULL,
FOREIGN KEY (Delivery_ID)
REFERENCES Delivery (Delivery_ID) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE Customers (
User_ID INT IDENTITY(1,1) PRIMARY KEY,
First_Name VARCHAR (20) DEFAULT NULL,
Last_name VARCHAR (25) NOT NULL,
Email VARCHAR (100) NOT NULL,
Phone_Number VARCHAR (20) DEFAULT NULL,
Product_ID CHAR (2) NOT NULL ,
FOREIGN KEY (Product_ID) REFERENCES Products (Product_ID) ON DELETE CASCADE ON UPDATE CASCADE
);
SELECT * FROM Customers;
SELECT * FROM Delivery;
SELECT * FROM Products;
SET IDENTITY_INSERT Delivery ON;
INSERT INTO Delivery
([Delivery_ID], [Delivery_Date],[Delivery_Time])
VALUES (1, '2000-05-22', '8:00pm');
INSERT INTO Delivery
([Delivery_ID], [Delivery_Date],[Delivery_Time])
VALUES (2, '2000-05-23', '7:00pm');
INSERT INTO Delivery
([Delivery_ID], [Delivery_Date],[Delivery_Time])
VALUES (3, '2000-05-24', '8:00pm');
INSERT INTO Delivery
([Delivery_ID], [Delivery_Date],[Delivery_Time])
VALUES (4, '2000-05-25', '7:00pm');
SELECT * FROM Delivery;
SET IDENTITY_INSERT Delivery OFF;
INSERT INTO Products
([Product_ID], [Product_Name], [Delivery_ID])
VALUES (1, 'Television', 3);
INSERT INTO Products
([Product_ID], [Product_Name], [Delivery_ID])
VALUES (2, 'Refrigerator', 1);
INSERT INTO Products
([Product_ID], [Product_Name], [Delivery_ID])
VALUES (3, 'Phone', 4);
INSERT INTO Products
([Product_ID], [Product_Name], [Delivery_ID])
VALUES (4, 'Fan', 2);
SELECT * FROM Products
INSERT INTO Customers
([User_ID], [First_Name], [Last_name], [Email], [Phone_Number], [Product_ID])
VALUES (1, 'John', 'Nyem', 'johnyem@gmail.com', '080.936.4113', 2);
SET IDENTITY_INSERT Customers ON;
INSERT INTO Customers
([User_ID], [First_Name], [Last_name], [Email], [Phone_Number], [Product_ID])
VALUES (1, 'John', 'Nyem', 'johnyem@gmail.com', '080.936.4113', 2);
INSERT INTO Customers
([User_ID], [First_Name], [Last_name], [Email], [Phone_Number], [Product_ID])
VALUES (2, 'Chisom', 'Orji', 'chisomorji@gmail.com', '080.663.3417', 3);
INSERT INTO Customers
([User_ID], [First_Name], [Last_name], [Email], [Phone_Number], [Product_ID])
VALUES (3, 'Funke', 'Bello', 'funkyb@gmail.com', '081.437.2177', 1);
INSERT INTO Customers
([User_ID], [First_Name], [Last_name], [Email], [Phone_Number], [Product_ID])
VALUES (4, 'Ahmed', 'Musa', 'musaA@gmail.com', '090.444.2122', 4);
SELECT * FROM Customers;
SET IDENTITY_INSERT Customers OFF