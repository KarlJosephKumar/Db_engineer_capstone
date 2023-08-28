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

**Week 2 execises**

**Summarizing data:**
Task 1:
I created a view table called 'OrdersView' where the quantity of orders is over 2.

![OrdersView](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/9b2ac91a-ed6d-4218-ab27-dad1c8c87679)

Task 2:
In the second task I created a query that returns me items from multiple tables where the TotalCost in Orders is over 150.

![InfoOfOrdersOver150](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/6a584030-616e-4ad9-8851-66abb4729561)


Task 3:
In the third task I had to find items that were ordered over 2 times.

![ItemsWithOrdersOver2](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/bb47c960-6399-4a52-9409-2b27e606dec8)

**Optimized Queries**
Task 1:
In the first task of optimized queries I had to make a procedure that finds the highest order quantity.

![MaxQuantityInOrders](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/3248f3bf-017a-40cf-99cc-a5d3021c51e4)

Task 2:
In the second task I created a prepared statement for Order details on @id. In order details I get OrderID, Quantity and TotalCost from Orders table.

![QuantityAndCostFromSetID](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/2a427709-dc0a-4a73-b1f5-264766ac756c)

Task 3:
In the third task I created a stored procedure where I can insert an ID and it removes it from the orders table.

![OrderDeletionStatement](https://github.com/KarlJosephKumar/Db_engineer_capstone/assets/41339304/2c1b0fac-4152-466b-bb9a-eed7a82c6ebd)


