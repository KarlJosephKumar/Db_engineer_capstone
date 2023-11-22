# Database Engineer Capstone project.

The project is presented by Meta and is the final project for Meta Database Engineer Professional Certificate.
In this project I am making a restaurant database for Little Lemon restaurant.

## Key Learnings:
- Data modeling
- Relational database management
- In-depth SQL language.
- Tableau
- Python
- Jupyter

## Technologies:
-  MySQL
-  Python
-  MySQL Workbench
-  MySQL Connector for Python

## Description:
Made a data model for the project and used SQL to create functions, prepared statements and procedures to fetch data, then created analytics for the data in Tableau. Connected the database with Python and used cursor to get data from the database.

My Database model looks like this:

![LittleLemonDM](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/bf250ef8-3772-443a-bff4-632b67cfcadc)


I use forward engineer tool in MySQL Workbench to implement this model into a database. The file with sql query is in the 'Database' directory called 'LittleLemonForwardEngineerSQL'

Query showing that the database exists now:

![ShowDatabasesQuery](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/a4a00ad9-f17f-4c8a-a7ee-b297dccff629)


I populated the tables with random data provided by ChatGPT and all of it is in the 'DataForTables' file in 'database' directory.


- **Week 2 execises**

- **Summarizing data:**

- Task 1:

I created a view table called 'OrdersView' where the quantity of orders is over 2.

![OrdersView](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/6bfa09cb-111b-444e-81e7-f8839378995f)


- Task 2:

In the second task I created a query that returns me items from multiple tables where the TotalCost in Orders is over 150.

![InfoOfOrdersOver150](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/aff686e8-64fe-4d57-9f6c-6e5c7fc85d23)


- Task 3:

In the third task I had to find items that were ordered over 2 times.

![ItemsWithOrdersOver2](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/af21e7dd-4fa4-4efa-9948-3820780f9632)


I have combined these tasks into file: SummarizeData in Week2 directory.


- **Optimized Queries**
- Task 1:

In the first task of optimized queries I had to make a procedure that finds the highest order quantity.

![MaxQuantityInOrders](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/2311bc06-166f-49ff-945a-d27e5a9f7778)


- Task 2:

In the second task I created a prepared statement for Order details on @id. In order details I get OrderID, Quantity and TotalCost from Orders table.

![QuantityAndCostFromSetID](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/e8a8bcc5-1d1b-4f64-8091-2ef7dee73feb)


- Task 3:

In the third task I created a stored procedure where I can insert an ID and it removes it from the orders table.

![OrderDeletionStatement](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/200b4233-b419-4a27-ba5d-0d19c41e130b)


I have combined these tasks into file: OptimizedQueries in Week2 directory.


- **Table booking system**
- **Check availability on bookings**

-  Task 1:

In the first task I have populated my bookings table with some given data:

![PopulateBookingsTableExample](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/42efba47-f089-4d80-ad67-368e13dbc433)


Which I have done like this:

![PopulateBookingsTable](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/8bd534da-a31f-472a-8232-d22782986928)


- Task 2:

In the second task I have created a stored procedure that takes 2 parameters: Date and TableNumber and it checks if there already is a booking on that table on that date.

![CheckIfTableBooked](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/a4889ff7-aee6-4330-bcc1-ce97564955b0)


- Task 3:

In the third task I have created a stored procedure that adds a valid booking into the bookings table. It takes Date and TableNumber as parameters and uses transaction.

![AddValidBooking](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/29a7a4b5-ab68-4d9e-8972-c9e1154414cc)


I have combined these tasks into file: BookingAvailabilityQueries in Week2 directory.


- **Add and update bookings**

- Task 1:

In the first task I have created a stored procedure that adds bookings into the table and it takes 4 parameters: BookingId, CustomerID, TableNumber, BookingDate.
Since I have BookingId as auto increment I will be creating this procedure with 3 parameters: CustomerID, TableNumber, BookingDate.

![AddBooking](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/6371e628-b842-410e-b419-33e387af0b46)


- Task 2:

In the second task I have created a stored procedure to update a booking in the table with 2 parameters: BookingID and Date to be changed to on that booking id.

![UpdateBooking](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/45daa065-0596-40de-b442-d2d5e47e5392)


- Task 3:

In the third task I have created a cancel booking stored procedure that takes the ID of the booking as parameter and deletes the booking from the table.

![CancelBooking](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/98cd7142-e49a-4237-847f-e48321697237)


I have combined these tasks into file: AddAndUpdateBookings in Week2 directory.


- **Week 3**
- **Setting up Tableau for data analysis**

I added excel sheet to Week3 called LittleLemonDBExcel that I am using in my data analysis.

- Task 1:

I filtered the whole data in Data Source to only show United States as the country.

![FilterUSFromWholeFile](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/014456de-8132-4db3-9ebd-62c83b99f663)


- Task 2:

In the second task I split the Customer name column into First Name and Last Name columns and named them.

![NameSplit](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/5d7aa980-efa6-49f5-a9ab-268332cd1328)


- Task 3:

In the third task I created a Profit column from Sales - Cost columns

![ProfitColumn](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/94e8dec6-9dd8-44b9-b512-38663b6507ea)


- **Creating interactive dashboards**

- Task 1:

In the first task I created a bar chart of customers who have spent over $70, added colors.

![CustomerSales](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/506ab274-0479-448a-8cf5-36842d704ef6)


- Task 2:

In the second task I created a line chart of profits in years 2019 - 2022 excluding 2023 from the table.

![ProfitsIn2019-202](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/a9645602-cd0a-43b2-abf4-7165505eb95d)


- Task 3:

In the third task I created a bubble chart that shows Customer Names but and on hover there are 3 rows: Customer Name, Profit, Sales.

![BubbleChart](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/06cc15f5-c742-41a3-8b9f-d91ad16b05f5)


- Task 4:

In the fourth task I created a bar chart that shows the following:
Turkish, Italian and Greek Profit on years 2020 - 2022.

![CuisineProfitsBar](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/4f2263c9-eb7b-4d9a-8aeb-e2a83361abdc)


- Task 5:

In the fifth task I created a interactive dashboard that combines customer bar chart and bubble chart where if clicked on bar and the bubble, the bubble chart shows the name, sales and profit info.

![dashboardWithCustomer](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/de94f67e-ff01-4484-9f9d-a888c184e53b)


I have added the pictures and the Tableau file 'LittleLemonWorkbook' into the Week3 Directory.
The Tableau file contains all of the tasks done on Data source, seperate sheets and a dashboard.


- **Python integration**

- Task 1:

I connected with the database by importing mysql.connector into python. Then I created the connection where I specified my hostname, password and database name.
I connected and printed in which database I am at.

- Task 2:

In the second task I had to show tables. Which I did with a function show_tables

- Task 3:

In the third task I need to return specific details from database where I need to return full name and contact details for everyone who has spent over $60.

![pythonExercises](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/46e9a81a-8e72-4cd7-93ff-e1a52f9d09e5)


All of these exercises are done in "pythonExercises.py" file.
