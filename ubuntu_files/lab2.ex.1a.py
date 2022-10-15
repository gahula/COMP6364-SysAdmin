import mysql.connector
import sys
import csv

mydb = mysql.connector.connect(
    host="localhost",
    user="debian-sys-maint",
    password="lKcgzEzg0lvPtlBm",
    database="UWILab2"
)

mycursor = mydb.cursor()

#1.
#mycursor.execute("CREATE DATABASE UWILab2")

#2.
#mycursor.execute("SHOW DATABASES")
#for x in mycursor:
    #print(x)

#3.
#mycursor.execute("CREATE TABLE uwiclass (fname VARCHAR(255), lname VARCHAR(255), age INT)")

#4.
#mycursor.execute("SHOW TABLES")
#for x in mycursor:
    #print(x)

#5.
#sql = "INSERT INTO uwiclass (fname,lname,age) VALUES(%s,%s,%s)"
#val = [
#    ("James", "Highway", 32),
#    ("Phillip", "King", 25),
#    ("John", "Michaels", 45)
#]
#mycursor.executemany(sql, val)
#mydb.commit()
#print(mycursor.rowcount, "records inserted")

#6.
mycursor.execute("SELECT * FROM uwiclass")
rows = mycursor.fetchall()

#export results
csv_path = 'lab2-exe-mqsql.csv'
fp = open(csv_path, 'w', newline='')
csv_file = csv.writer(fp)
csv_file.writerows(rows)
fp.close()

