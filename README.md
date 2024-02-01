# Power-BI-project
***

## Contents

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#project-description">Project description</a>
    </li>
    <li>
      <a href="#installation-instructions">Installation instructions</a>
    </li>
    <li>
      <a href="#wiki">Wiki</a>
    </li>
    <li>
      <a href="#github-repository-structure">Github repository structure</a>
    </li>
    <li><a href="#database-model">Database model</a></li>
    <li><a href="#report-pages">Report pages</a>
        <ul>
        <li><a href="#navigation-bar">Navigation bar</a></li>
        <li><a href="#executive-summary">Executive Summary page</a></li>
        <li><a href="#customer-detail">Customer Detail page</a></li>
        <li><a href="#product-detail">Product Detail page</a></li>
        <li><a href="#stores-map">Stores Map page</a></li>
        <li><a href="#stores-drillthrough">Stores Drillthrough page</a></li>
        <li><a href="#stores-tooltip-page">Stores Tooltip page</a></li>
        </ul>
    </li>
    <li>
      <a href="#sql-queries">SQL queries</a>
    </li>
  </ol>
</details>

***

<!-- PROJECT DESCRIPTION -->

## Project Description

This project creates a Power BI report giving a high level summary for executives of a business as well as customer, product and region analysis. The project involves acquiring data from various sources, constructing a star-schema database model and creating an interactive, multi-page report.

***
<!-- INSTALLATION INSTRUCTIONS -->
## Installation Instructions

Clone the github repostory by running the following command in a terminal.
```
git clone https://github.com/sgrayner/EDA-Manufacturing.git
```

***
<!-- WIKI -->
## Wiki

For details on the construction and formatting of the tables and report visuals in this project, visit the wiki here: https://github.com/sgrayner/Power-BI-project/wiki

***
<!-- GITHUB REPOSITORY STRUCTURE -->
## Github repository structure

```
├── Report_images
│   ├── Customer_detail_page.png
│   │── Executive_summary_page.png 
│   ├── KPI_setup.png
│   ├── Line_chart_setup.png
│   ├── Power_BI_model.png
|   ├── Product_detail_page.png
|   ├── Product_slicer_open.png
|   ├── Stores_drillthrough_page.png
|   ├── Stores_map_visual.png
|   ├── Table_setup.png
|   ├── Tooltip_page.png
|   ├── Top10_table_setup.png
├── SQL_queries
│   ├── question_1.csv
│   ├── question_1.sql
│   ├── question_2.csv
│   ├── question_2.sql
│   ├── question_3.csv
│   ├── question_3.sql
│   ├── question_4.csv
│   ├── question_4.sql
│   ├── question_5.csv
│   ├── question_5.sql
├── SQL_table_columns
│   ├── country_region_columns.csv
│   ├── dim_customer_columns.csv
│   ├── dim_date_columns.csv
│   ├── dim_product_columns.csv
│   ├── dim_store_columns.csv
│   ├── forquerying2_columns.csv
│   ├── forview_columns.csv
│   ├── my_store_overviews_2_columns.csv
│   ├── my_store_overviews_columns.csv
│   ├── my_store_overviewsnew_columns.csv
│   ├── new_store_overviews_columns.csv
│   ├── orders_columns.csv
│   ├── orders_columns.png
│   ├── table_names.csv
│   ├── table_list.png
│   ├── test_columns.csv
│   ├── test_store_overviews_2_columns.csv
│   ├── test_store_overviews_columns.csv
├── navigation_bar_images
│   ├── Customer_icon.png
│   ├── Customer_icon_blue.png
│   ├── Dashboard_icon.png
│   ├── Dashboard_icon_blue.png
│   ├── Filter_icon.png
│   ├── Filter_icon_blue.png
│   ├── Map_icon.png
│   ├── Map_icon_blue.png
│   ├── Product_icon.png
│   ├── Product_icon_blue.png
│   ├── stores_default.png
│   ├── stores_hover.png
├── Power_BI_project.pbix
└── README.md
```

***
<!-- DATABASE MODEL -->
## Database model

![Power BI model](https://github.com/sgrayner/Power-BI-project/blob/main/Report_images/Power_BI_model.png)

***
<!-- REPORT PAGES -->
## Report pages

<img align="right" src="https://github.com/sgrayner/Power-BI-project/blob/main/Report_images/Nav_bar.png" alt="Navigation bar" width="300"/>


<!-- NAVIGATION BAR -->
### **Navigation bar** 

The navigation bar provides page navigation buttons to move between the pages of the report. Hovering over a button will tell the user which page the button links to. 


<!-- EXECUTIVE SUMMARY -->
### **Executive Summary**

This page gives an overview of the company's performace as a whole, allowing executives to quickly check outcomes against targets.

![Executive Summary page](https://github.com/sgrayner/Power-BI-project/blob/main/Report_images/Executive_summary_page.png)

<!-- CUSTOMER DETAIL -->
### **Customer Detail**

This page gives customer-level analyses, including a slicer to analyse across different years.

![Customer Detail page](https://github.com/sgrayner/Power-BI-project/blob/main/Report_images/Customer_detail_page.png)

<!-- PRODUCT DETAIL -->
### **Product Detail**

This page provides an in-depth look at which products in the company's inventory are selling well. It also contains a filter pane which allows filtering by product category and country.

![Product Detail page](https://github.com/sgrayner/Power-BI-project/blob/main/Report_images/Product_detail_page.png)

<!-- STORES MAP -->
### **Stores Map**

This page uses a map visual to allow the user to easily check on the relative performances of stores between continents, countries and districts. It also allows users to quickly check if a region is meeting its profit target.

![Stores Map page](https://github.com/sgrayner/Power-BI-project/blob/main/Report_images/Stores_map_visual.png)

<!-- STORES DRILLTHROUGH -->
### **Stores Drillthrough**

This drillthrough page gives further details on a region or store drilled through from the stores map.

![Stores Drillthrough page](https://github.com/sgrayner/Power-BI-project/blob/main/Report_images/Stores_drillthrough_page.png)

<!-- STORES TOOLTIP -->
### **Stores tooltip page**

This page contains the gauge used for the profit target in the stores map.

<img align="left" src="https://github.com/sgrayner/Power-BI-project/blob/main/Report_images/Tooltip_page.png" alt="Stores tooltip" width="800"/> <br><br>


***
<!-- SQL QUERIES -->
## SQL queries

In the SQL_queries folder, you can find SQL code as well as the outputs answering the following business analysis questions from a database held in a cloud server. The database tables and columns are found in the SQL_tables_columns folder.

1. How many staff are there in all of the UK stores?
   
2. Which month in 2022 has had the highest revenue?

3. Which German store type had the highest revenue for 2022?

4. Create a view where the rows are the store types and the columns are the total sales, percentage of total sales and the count of orders

5. Which product category generated the most profit for the "Wiltshire, UK" region in 2021?
