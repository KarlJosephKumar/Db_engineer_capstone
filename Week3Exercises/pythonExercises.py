import mysql.connector as connector

def get_connection():
    try:
        connection = connector.connect(
        user = "root",
        password = "your_password",
        database = "LittleLemonDB"
        )
        print("Connected to the database")
        return connection
    except connector.Error as er:
        print("Error code:", er.code)
        print("Error message:", er.message)
        return None

def get_db(cursor):
    cursor.execute("""Select DATABASE()""")
    db_name = cursor.fetchall()
    print("Current database:", db_name[0][0])

def show_tables(cursor):
    show_tables_query = """SHOW tables"""
    cursor.execute(show_tables_query)
    results = cursor.fetchall()
    print("Tables:")
    for x in results:
        print(x[0])

def promotion_customers(cursor):
    find_promotion_applicants_query = """
    Select ContactInfo.FullName,
    ContactInfo.ContactNumber,
    ContactInfo.Email,
    Orders.TotalCost
    from Orders
    Inner Join Bookings ON
    Bookings.BookingID = Orders.OrderID
    Inner JOIN Customers ON
    Bookings.CustomerID = Customers.CustomerID
    INNER JOIN ContactInfo ON
    ContactInfo.ContactInfoID = Customers.ContactInfoID
    Where Orders.TotalCost > 60;"""
    cursor.execute(find_promotion_applicants_query)
    results = cursor.fetchall()
    print("\nCustomers applicable for promotions:")
    for x in results:
        print("\nFull name:", x[0])
        print("Contact number:", x[1])
        print("Email:", x[2])
        print("Total spent", x[3])

def main():
    connection = get_connection()
    if (connection == None):
        print("Connection failure")
        return
    cursor = connection.cursor()
    get_db(cursor)
    show_tables(cursor)
    promotion_customers(cursor)
    cursor.close
    connection.close

if __name__ == "__main__":
    main()