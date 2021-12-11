import json
import psycopg2

TABLES = [
    'car_list',
    'cars',
    'customers',
    'engine_type',
    'orders',
]

config = psycopg2.connect(database="Maistruk_Lab_2_DB", user="Maistruk", password="1111", host="localhost", port="5432")

data = {}
with config:

    cur = config.cursor()
    
    for table_name in TABLES:
        cur.execute('SELECT * FROM ' + table_name)
        rows = []
        fields = [x[0] for x in cur.description]

        for row in cur:
            rows.append(dict(zip(fields, row)))

        data[table_name] = rows

with open('Maistruk_Lab_3_DB_all_data.json', 'w') as output_f:
    json.dump(data, output_f, default = str)
    