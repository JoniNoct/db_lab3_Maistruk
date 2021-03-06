-- Create Customers table

CREATE TABLE Customers
(
  cust_id      int        NOT NULL ,
  cust_name    char(50)   NOT NULL ,
  cust_age     int
);

-- Create Engine_Type table

CREATE TABLE Engine_Type
(
  engine_id    int        NOT NULL ,
  engine_type  char(20)   NOT NULL
);

-- Create Cars table

CREATE TABLE Cars
(
  car_id       int        NOT NULL ,
  model        char(20)   NOT NULL ,
  price        int        NOT NULL ,
  mileage      int        NOT NULL ,
  engine_id    int        NOT NULL
);

-- Create Orders table

CREATE TABLE Orders
(
  order_id     int        NOT NULL ,
  car_id       int        NOT NULL ,
  cust_id      int        NOT NULL
);

-- Define primary keys

ALTER TABLE Customers ADD CONSTRAINT PK_Customers PRIMARY KEY (cust_id);
ALTER TABLE Engine_Type ADD CONSTRAINT PK_Engine_Type PRIMARY KEY (engine_id);
ALTER TABLE Cars ADD CONSTRAINT PK_Cars PRIMARY KEY (car_id);
ALTER TABLE Orders ADD CONSTRAINT PK_Orders PRIMARY KEY (order_id);

-- Define foreign keys

ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_Engine_Type FOREIGN KEY (engine_id) REFERENCES Engine_Type(engine_id);
ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Cars FOREIGN KEY (car_id) REFERENCES Cars(car_id);
ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (cust_id) REFERENCES Customers(cust_id);