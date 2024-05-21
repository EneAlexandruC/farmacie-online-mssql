# Online Pharmacy Database Management

**Tools:**

- VS Code
- SQL Server 2022

## Task

You are the database administrator for an online pharmacy chain. The database consists of the following tables:

### 1. SQL Instructions

a. Create the `Pharmacy` database.

b. Create the tables as described. Use Primary Key, Foreign Key, NULL, NOT NULL, and other constraints.

c. Insert at least 20 rows into each table with diverse information to ensure the following exercises have meaningful results.

### 2. Query for the Most Expensive Medicine

The sales director wants to know the most expensive purchased medicine. Use subqueries to find the answer.

### 3. Report for Subscribers with At Least 3 Orders

The sales director requests a report displaying all subscribers who have placed at least 3 orders. Display the following information:

- Subscriber Name
- Subscriber Address
- Subscription Date
- Number of Orders
- Total Order Price

Create the above report using a view with joins between the necessary tables. Name the columns exactly as shown.

### 4. Discount Procedure for Loyal Subscribers

To retain subscribers, the marketing director decides to offer discounts to subscribers who have placed orders with high total values as follows:

- Subscribers with total order values > 50,000 lei receive a 7% discount.
- Subscribers with total order values between 15,000 and 49,999 lei receive a 4% discount.
- Subscribers with total order values between 5,000 and 14,999 lei receive a 2% discount.

Create a stored procedure that:

- Calculates the total value of a subscriber's orders.
- Updates the `Subscriber` table with the corresponding discount value based on the calculated total.
- Displays a message: “Subscriber with ID = <value_ID> had orders totaling <value_calculated_orders> and receives a discount of <value_discount>%.”

### 5. Trigger for Order and Stock Updates

Create a trigger that, for each order placed by a subscriber:

- Updates the order value based on the subscriber's discount.
- Updates the pharmacy stock.

Optionally, launch the stored procedure from the trigger to calculate the subscriber's discount. It would be most efficient to create a stored procedure that takes into account the subscriber's ID rather than running the global procedure above.
