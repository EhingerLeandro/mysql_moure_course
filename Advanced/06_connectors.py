# This allows to connect with a dataase with a programming language

# It's neccesary to download the module to use it 
import mysql.connector

config={
    "user":"root",
    "password":"123456",
    "host":"127.0.0.1",
    "port":"3306",
    "database":"Hello MYSQL"
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

query="SELECT * FROM users"
cursor.execute(query)
results=cursor.fetchall()

for row in results:
    print(row)

cursor.close()
connection.close()