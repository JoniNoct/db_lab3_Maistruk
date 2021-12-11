import csv
import psycopg2

OUTPUT_FILE_T = 'Maistruk_Lab_3_DB_{}.csv'

TABLES = [
    'car_list',
    'cars',
    'customers',
    'engine_type',
    'orders',
]

config = psycopg2.connect(database="Maistruk_Lab_2_DB", user="Maistruk", password="1111", host="localhost", port="5432")

with config:
    cur = config.cursor()

    for table_name in TABLES:
        cur.execute('SELECT * FROM ' + table_name)
        fields = [x[0] for x in cur.description]
        with open(OUTPUT_FILE_T.format(table_name), 'w') as outfile:
            writer = csv.writer(outfile)
            writer.writerow(fields)
            for row in cur:
                writer.writerow([str(x) for x in row])