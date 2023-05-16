#  **Project 2: ETL Mini-Project**
*For this project, we worked together with our group from Project 1. Members include Ryan Cole, Talon Mehta, Taylor Schaeffer, Craig Hunter, and Kenneth Morrow.*

In this project we practiced building an ETL pipeline using Python, Pandas, and regular expressions to extract and transform data about crowdfunding, categories, subcategories, and contacts. Each dataset came with it's own unique set of challenges; some had data that merely needed transforming into a useable format, others required more work and data extraction. After we transformed the data, we created four CSV files and used the CSV file data to create an ERD and a table schema using QuickDBD. Finally, we uploaded the CSV file data into a Postgres database.

The four CSV files produced are "campaign.csv", "category.csv", "new_contacts.csv", and "subcategory.csv". These CSV's can be found in the file named Started_Files. 

##  **Step 1: Create Category & Subcategory Dataframes**
1. Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

	- A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of 	unique categories

	- A "category" column that contains only the category titles

	- The following image shows this category DataFrame:

![cat_df](https://github.com/taschaef/Crowdfunding_ETL/assets/124079708/ea77effb-5103-4913-ac8c-79512fe03651)



2. Export the category DataFrame as category.csv and save it to your GitHub repository.

3. Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

	- A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the 	number of unique subcategories

	- A "subcategory" column that contains only the subcategory titles

	- The following image shows this subcategory DataFrame:

![subcat_df](https://github.com/taschaef/Crowdfunding_ETL/assets/124079708/7502a712-3f6c-4c7a-8eea-7613de4d5ac3)




##  **Step 2: Create the Campaign DataFrame**

1. Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

	- The "cf_id" column

	- The "contact_id" column

	- The "company_name" column

	- The "blurb" column, renamed to "description"

	- The "goal" column, converted to the float data type

	- The "pledged" column, converted to the float data type

	- The "outcome" column

	- The "backers_count" column

	 -The "country" column

	- The "currency" column

	- The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format

	- The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format

	- The "category_id" column, with unique identification numbers matching those in the "category_id" column of 	the category DataFrame

	- The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" 	column of the subcategory DataFrame

	-The following image shows this campaign DataFrame:
  ![crowdfunding_df](https://github.com/taschaef/Crowdfunding_ETL/assets/124079708/18b4eeab-f2a5-4a90-8ba7-9d1837ccba16)

  

2. Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.


## **Step 3: Create the Contacts DataFrame**

1. We chose to use regular expressions to extract and transform the data from the contacts.xlsx Excel data

2. Import the contacts.xlsx file into a DataFrame.

3. Extract the "contact_id", "name", and "email" columns by using regular expressions.

4. Create a new DataFrame with the extracted data.

5. Convert the "contact_id" column to the integer type.

6. Split each "name" column value into a first and a last name, and place each in a new column.

7. Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

8. The following image shows this contacts DataFrame:


![contacts_df](https://github.com/taschaef/Crowdfunding_ETL/assets/124079708/b703cca3-3570-45b1-ada5-62c6cf596f18)

 
## **Step 4: Create the Crowdfunding Database**
1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBD.

2. Use the information from the ERD to create a table schema for each CSV file.

	- Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.

3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.

4. Create a new Postgres database, named crowdfunding_db.

5. Using the database schema, create the tables in the correct order to handle the foreign keys.

6. Verify the table creation by running a SELECT statement for each table.

7. Import each CSV file into its corresponding SQL table.

8. Verify that each table has the correct data by running a SELECT statement for each.

