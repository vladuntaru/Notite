#!/usr/bin/python
import pymysql


dbServerName    = "127.0.0.1"

dbUser          = "root"

dbPassword      = "1448"

dbName          = "TestDataBase2"

charSet         = "utf8mb4"

cusrorType      = pymysql.cursors.DictCursor



connectionObject   = pymysql.connect(host=dbServerName, user=dbUser, password=dbPassword,

                                     db=dbName, charset=charSet,cursorclass=cusrorType)
try:



    # Create a cursor object

    cursorObject        = connectionObject.cursor()



    # SQL query string

    sqlQuery            = "CREATE TABLE Liceu(id int, Nume varchar(32), Prenume varchar(32), Legitimatie int)"



    # Execute the sqlQuery

    cursorObject.execute(sqlQuery)



    # SQL query string

    sqlQuery            = "show tables"



    # Execute the sqlQuery

    cursorObject.execute(sqlQuery)

#mycursor = mydb.cursor()

sql = "INSERT INTO Liceu(id, Nume, Prenume, Leg) VALUES (%n, %s, %s, %n)"
val = (5, 'Highway 21', 'sfsdfs', 53)
cursorObject.execute(sql, val)

cursorObject.commit()

print(mycursor.rowcount, "record inserted.")



    #Fetch all the rows

    rows                = cursorObject.fetchall()



    for row in rows:

        print(row)

except Exception as e:

    print("Exeception occured:{}".format(e))


finally:

    connectionObject.close()
