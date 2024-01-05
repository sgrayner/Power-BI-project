# Power-BI-project

## Data sources

- Orders table - Azure SQL Database
- dim_products table - Imported from csv
- dim_stores table - Azure blob storage
- dim_customers table - Imported and combined from csv files in a zip folder

## Data Transformations

**Orders table:**

- Removed \[card number\] column to protect customer privacy.
- Split datetime columns into separate date and time columns.
- Removed rows missing an \[order date\] value.


**dim_products table:**

- Removed duplicate \[product code\] entries.
- Cleaned the \[weight\] column by splitting numbers and units, replacing blanks and error values and converting all weights to kg using 
```
Weight (kg) = IF(Products[Units] <> "kg", Products[Weight]/1000, Products[Weight])
```

**dim_customers table:**

- Combined the \[First Name\] and \[Last Name\] columns together to create the \[Full Name\] column.
- Removed the \[source.name\] column.
