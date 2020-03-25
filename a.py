import pyodbc

conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=localhost;'
                      'Database=retail_db;'
                      'Trusted_Connection=yes;')

cursor = conn.cursor()
#cursor.execute('SELECT * FROM retail_db.dbo.categories WHERE ')
cursor.execute('SELECT * FROM retail_db.dbo.customers WHERE  customer_id=1')


for row in cursor:
    print(row)

