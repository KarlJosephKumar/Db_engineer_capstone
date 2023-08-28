# Database Engineer Capstone project.

The project is presented by Meta and is the final project for Meta Database Engineer Professional Certificate.
In this project I am making a restaurant database for Little Lemon restaurant.
For the project I use MySQL.

My Database model looks like this:

![LittleLemonDM](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/b4e9d9ee-6e86-46be-9b85-adc93b47c045)

I use forward engineer tool in MySQL Workbench to implement this model into a database. The file with sql query is in the 'Database' directory called 'LittleLemonForwardEngineerSQL'

Query showing that the database exists now:

![ShowDatabasesQuery](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/103a387d-b31a-4f16-a2cf-1e07b157c927)

I populated the tables with random data provided by ChatGPT and all of it is in the 'DataForTables' file in 'database' directory.


- **Week 2 execises**

- **Summarizing data:**

- Task 1:

I created a view table called 'OrdersView' where the quantity of orders is over 2.

![OrdersView](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/9b2ac91a-ed6d-4218-ab27-dad1c8c87679)


- Task 2:

In the second task I created a query that returns me items from multiple tables where the TotalCost in Orders is over 150.

![InfoOfOrdersOver150](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/6a584030-616e-4ad9-8851-66abb4729561)


- Task 3:

In the third task I had to find items that were ordered over 2 times.

![ItemsWithOrdersOver2](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/bb47c960-6399-4a52-9409-2b27e606dec8)


I have combined these tasks into file: SummarizeData in Week2 directory.


- **Optimized Queries**
- Task 1:

In the first task of optimized queries I had to make a procedure that finds the highest order quantity.

![MaxQuantityInOrders](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/3248f3bf-017a-40cf-99cc-a5d3021c51e4)


- Task 2:

In the second task I created a prepared statement for Order details on @id. In order details I get OrderID, Quantity and TotalCost from Orders table.

![QuantityAndCostFromSetID](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/2a427709-dc0a-4a73-b1f5-264766ac756c)


- Task 3:

In the third task I created a stored procedure where I can insert an ID and it removes it from the orders table.

![OrderDeletionStatement](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/2c1b0fac-4152-466b-bb9a-eed7a82c6ebd)


I have combined these tasks into file: OptimizedQueries in Week2 directory.


- **Table booking system**
- **Check availability on bookings**

-  Task 1:

In the first task I have populated my bookings table with some given data:

![PopulateBookingsTableExample](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/369e19fb-a29e-4efc-86f8-7cf81003a3b4)

Which I have done like this:

![PopulateBookingsTable](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/90ee31e9-90ce-4380-b3b1-a0c669ecd976)


- Task 2:

In the second task I have created a stored procedure that takes 2 parameters: Date and TableNumber and it checks if there already is a booking on that table on that date.

![CheckIfTableBooked](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/656f065d-8894-4174-88c7-b7eb818f8add)


- Task 3:

In the third task I have created a stored procedure that adds a valid booking into the bookings table. It takes Date and TableNumber as parameters and uses transaction.

![AddValidBooking](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/c2ca8e5b-4980-4aec-8364-b438d4031d7d)


I have combined these tasks into file: BookingAvailabilityQueries in Week2 directory.


- **Add and update bookings**

- Task 1:

In the first task I have created a stored procedure that adds bookings into the table and it takes 4 parameters: BookingId, CustomerID, TableNumber, BookingDate.
Since I have BookingId as auto increment I will be creating this procedure with 3 parameters: CustomerID, TableNumber, BookingDate.

![AddBooking](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/a8b38953-1ad6-4924-a46c-8b04e9905b84)


- Task 2:

In the second task I have created a stored procedure to update a booking in the table with 2 parameters: BookingID and Date to be changed to on that booking id.

![UpdateBooking](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/dae8232d-6f6c-477f-bf3d-3b3871c16d1c)


- Task 3:

In the third task I have created a cancel booking stored procedure that takes the ID of the booking as parameter and deletes the booking from the table.

![CancelBooking](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/d214e6da-2a62-40b2-956c-42ec1ac75fff)


I have combined these tasks into file: AddAndUpdateBookings in Week2 directory.


- **Week 3**
- **Setting up Tableau for data analysis**

I added excel sheet to Week3 called LittleLemonDBExcel that I am using in my data analysis.

- Task 1:

I filtered the whole data in Data Source to only show United States as the country.

![FilterUSFromWholeFile](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/7937a4ab-0340-4325-a381-6d278c0318d1)


- Task 2:

In the second task I split the Customer name column into First Name and Last Name columns and named them.

![NameSplit](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/de774535-37ee-4236-bb35-1dfee93ebce4)


- Task 3:

In the third task I created a Profit column from Sales - Cost columns

![ProfitColumn](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/5d761566-73e5-48f7-b75c-29cb297071b9)


- **Creating interactive dashboards**

- Task 1:

In the first task I created a bar chart of customers who have spent over $70, added colors.

![CustomerSales](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/07fa6a5f-c598-408f-8a0d-4659a78e6668)


- Task 2:

In the second task I created a line chart of profits in years 2019 - 2022 excluding 2023 from the table.

![ProfitsIn2019-202](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/d6ff9df4-fdcb-4074-8f3f-0fa75d9a7d2d)


- Task 3:

In the third task I created a bubble chart that shows Customer Names but and on hover there are 3 rows: Customer Name, Profit, Sales.

![BubbleChart](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/a1d074b9-46f0-4657-a3f3-9e213f94598f)


- Task 4:

In the fourth task I created a bar chart that shows the following:
Turkish, Italian and Greek Profit on years 2020 - 2022.

![CuisineProfitsBar](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/8a0678fc-01c4-4feb-a5c1-2dad0e459b0e)


- Task 5:

In the fifth task I created a interactive dashboard that combines customer bar chart and bubble chart where if clicked on bar and the bubble, the bubble chart shows the name, sales and profit info.

![dashboardWithCustomer](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/1284ac38-6622-40de-8d9e-8e67a93909e3)


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

![pythonExercises](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/3282f52a-d56e-4396-8433-fb653ea40887)


All of these exercises are done in "pythonExercises.py" file.
