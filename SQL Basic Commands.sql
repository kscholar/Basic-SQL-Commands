########  This SQL File Contains Basic SQL Queries in MY SQL  ########
# I have used "sakila" Schema and "customer" table.  
# The customer table contains 9 columns.
# Column names are "customer_id", "store_id", "first_name", "last_name", "email", "address_id", "active", "create_date", "last_update"



                     # Select Statements 
#The SELECT statement is used to select data from a database.
#The data returned is stored in a result table, called the result-set.
Select * from sakila.customer
Select customer_id, store_id, email from sakila.customer
                    
                    
                    # Select Distinct Statements
#The SELECT DISTINCT statement is used to return only distinct (different) values.
#Inside a table, a column often contains many duplicate values, and sometimes you only want to list the different (distinct) values.
Select distinct first_name from  sakila.customer
                    
                    # sql Where
 #The WHERE clause is used to filter records.
#The WHERE clause is used to extract only those records that fulfill a specified condition.
SELECT * FROM sakila.customer
where customer_id = 1


                   # SQL AND OR and NOT Operators
#The WHERE clause can be combined with AND, OR, and NOT operators.
#The AND and OR operators are used to filter records based on more than one condition:
#The AND operator displays a record if all the conditions separated by AND are TRUE.
#The OR operator displays a record if any of the conditions separated by OR is TRUE.
#The NOT operator displays a record if the condition(s) is NOT TRUE.

# AND Syntax
Select * from sakila.customer
where customer_id = 1 and store_id = 1
# OR Syntax
Select * from sakila.customer
where customer_id = 1 or store_id = 1
# NOT Syntax
Select * from sakila.customer
where not customer_id = 1


                   # ORDER BY Syntax
#The ORDER BY keyword is used to sort the result-set in ascending or descending order.
#The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
Select * from sakila.customer
order by customer_id ASC;

                  
                  # SELECT TOP Syntax
#The SELECT TOP clause is used to specify the number of records to return.
#The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.
Select * from sakila.customer
where address_id = 5 
LIMIT 50 ;


				  # The SQL MIN() and MAX() Functions
#The MIN() function returns the smallest value of the selected column.
#The MAX() function returns the largest value of the selected column.
# MIN() Syntax
SElect min(first_name) from sakila.customer
# MAX() Syntax
Select max(first_name) from sakila.customer
                  
                  
                  #The SQL COUNT(), AVG() and SUM() Functions
#The COUNT() function returns the number of rows that matches a specified criteria.
#The AVG() function returns the average value of a numeric column.
#The SUM() function returns the total sum of a numeric column.

# Count() Syntax
Select count(customer_id) from sakila.customer
where  active = 1
# AVG() Syntax
Select Avg(customer_id) from sakila.customer 
# SUM() Syntax
select sum(active) from sakila.customer

                  #The SQL LIKE Operator
#The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
#WHERE CustomerName LIKE 'a%'	Finds any values that start with "a"
#WHERE CustomerName LIKE '%a'	Finds any values that end with "a"
#WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
#WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
#WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
#WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o"


## Entries starting With Specific pattern 
select * from sakila.customer
WHERE first_name like 'a%'

## Counting the entries
select count(first_name) from sakila.customer
WHERE first_name like 'a%'

## Entries ending With Specific pattern 
select * from sakila.customer
WHERE first_name like '%a'
## Counting the entries
select count(first_name) from sakila.customer
WHERE first_name like '%a'

#Finding any values that have "ab" in any position
select * from sakila.customer
WHERE first_name like '%ab%'
## Counting the entries
select count(first_name) from sakila.customer
WHERE first_name like '%ab%'

#'_r%'	Finds any values that have "r" in the second position
select * from sakila.customer
WHERE first_name like '__t%'
## Counting the Entries
select count(first_name) from sakila.customer
WHERE first_name like '__t%'

#'a%o'	Finds any values that start with "a" and ends with "o"
select * from sakila.customer
WHERE first_name like 'a%o'
## Counting the entries
select count(first_name) from sakila.customer
WHERE first_name like 'a%o'
