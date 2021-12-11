-- Populate Cars table

INSERT INTO Cars(car_id, model, price, mileage, engine_id)
VALUES(1, 'SLK',       14200, 175670,  901),
      (2, 'C Class',   19890, 55975,   902),
      (3, 'GLA Class', 18980, 46700,   901),
      (4, 'GLC Class', 67980, 1213,    902),
      (5, 'S Class',   89985, 154,     903),
      (6, 'SL Class',  49948, 7900,    903),
      (7, 'E Class',   24270, 40550,   902),
      (8, 'A Class',   19990, 34860,   902),
      (9, 'SLR Class', 10000, 278099,  901),
      (10,'B Class',   27650, 38955,   902);

-- Populate Engine_Type table

INSERT INTO Engine_Type (engine_id, engine_type)
VALUES(901, 'Petrol'),(902, 'Diesel'),(903, 'Hybrid');

-- Populate Customers table

INSERT INTO Customers (cust_id, cust_name, cust_age)
VALUES(1243, 'John Dern',  44),
      (1007, 'Trevor Arto',51),
      (9253, 'Beny Poule', 27),
      (5766, 'Steve Mine', 34),
      (9957, 'Many Tolls', 19);

-- Populate Orders table

INSERT INTO Orders (order_id, car_id, cust_id)
VALUES(10010, 7, 5766),
      (10244, 1, 1243),
      (10150, 5, 1007),
      (10954, 6, 9253),
      (10677, 9, 9957),
      (10677, 8, 1007),
      (10677, 2, 1243),
      (10677, 3, 1007);


