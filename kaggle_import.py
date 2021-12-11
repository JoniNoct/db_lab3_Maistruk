import csv
import decimal
import psycopg2

config = psycopg2.connect(database="Maistruk_Lab_2_DB", user="Maistruk", password="1111", host="localhost", port="5432")

INPUT_CSV_FILE = 'car_list.csv'

query_0 = '''
CREATE TABLE Car_list
(
    model character(20),
    transmission character(50) NOT NULL,
    price numeric(10,2) NOT NULL,
    fuelType character(20)
)
'''

query_1 = '''
DELETE FROM Car_list
'''

query_2 = '''
INSERT INTO Car_list (model, transmission, price, fuelType) VALUES (%s, %s, %s, %s)
'''

with config:
    cur = config.cursor()
    cur.execute(query_1)
    with open(INPUT_CSV_FILE, 'r') as info:
        reader = csv.DictReader(info)
        for idx, row in enumerate(reader):
            price = decimal.Decimal(row['price'])
            values = (row['model'], row['transmission'], price, row['fuelType'])
            cur.execute(query_2, values)

    config.commit()
