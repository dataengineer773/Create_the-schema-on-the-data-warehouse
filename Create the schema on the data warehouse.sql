# Create the schema on the data warehouse
# Start the PostgreSQL server, by running the command below:
start_postgres

# Step 2: Create the database on the data warehouse.
# Using the createdb command of the PostgreSQL server, we can directly create the database from the terminal.
# Run the command below to create a database named billingDW :
# In the above command
# -h mentions that the database server is running on the localhost
# -U mentions that we are using the user name postgres to log into the database
# -p mentions that the database server is running on port number 5432:
createdb -h localhost -U postgres -p 5432 billingDW



# The commands to create the schema are available in the file below.
https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Working%20with%20Facts%20and%20Dimension%20Tables/star-schema.sql

# Download the file by running the command below.
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Working%20with%20Facts%20and%20Dimension%20Tables/star-schema.sql


# Create the schema
# Run the command below to create the schema in the under billingDW database.
psql  -h localhost -U postgres -p 5432 billingDW < star-schema.sql

