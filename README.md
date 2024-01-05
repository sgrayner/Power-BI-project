# Power-BI-project

## Data sources

- Orders table - Azure SQL Database
- dim_products table - Imported from csv
- dim_stores table - Azure blob storage
- dim_customers table - Imported and combined from csv files in a zip folder

## Table Transformations

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

**dim_stores table:***

- Replaced erroneous values in the \[Region\] column.
- Created new columns named \[Country\] and \[Geography\] using:
```
Country = SWITCH(dim_stores[Country Code], "GB", "United Kingdom", "DE", "Germany", "US", "United States")

Geography = dim_stores[Country Region] & ", " & dim_stores[Country]
```
- Created a geography hierarchy including \[Region\], \[Country\], \[Country Region\]

## Calculated tables

**Dates table:**

- Created a date table ranging from the start of the year of the first order to the end of the year of the last shipment using:
``` 
Date = CALENDAR(STARTOFYEAR(Orders[Order Date]), ENDOFYEAR(Orders[Shipping Date]))
```
- Created columns for time measures, using ```MONTH```, ```QUARTER```, ```YEAR```, ```STARTOFMONTH```, ```STARTOFQUARTER```, ```STARTOFYEAR``` and ```WEEKDAY```.
- Created a date hierarchy including \[Start of Year\], \[Start of Quarter\], \[Start of Month\], \[Start of Week\], \[Date\]

**Measures table:**

Created the following measures:

- ```Total Customers = DISTINCTCOUNT(Orders[User ID])```
- ```Total Orders = COUNT(Orders[Order Time])```
- ```Total Quantity = SUM(Orders[Product Quantity])```
- ```Total Profit = SUMX(Orders, Orders[Product Quantity] * (RELATED(Products[sale_price]) - RELATED(Products[cost_price])))```
- ```Total Revenue = SUMX(Orders, Orders[Product Quantity] * RELATED(Products[sale_price]))```
- ```Profit YTD = CALCULATE([Total Profit], Dates[Year] == YEAR(TODAY()))```
- ```Revenue YTD = CALCULATE([Total Revenue], Dates[Year] == YEAR(TODAY()))```

## Database model

![Power BI model](Power_BI_model.png)

