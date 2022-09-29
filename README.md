![Seattle Airbnb](https://storage.googleapis.com/kaggle-datasets-images/393/804/669cd834cb82eb3f7fbded566dd02e92/dataset-cover.jpeg)
# **Project 2 - Seattle Airbnb**
The aim of this project is to investigate patterns of more or less successful airbnb locations within the Seattle, Washington area. The two .csv files were joined on the “listing_id” and “id” columns respectively. Numerous factors were cleaned and taken into consideration such as zip code, accommodation, host status, price and reviews rating. Relationships between the data can be investigated in PostgreSQL to potentially glean new insights into the statistically relevant operations of Seattle airbnbs.

## **Members**
Jose Sandoval  &emsp; &emsp; Vanessa Kemp<br>
Nick Taheri   &emsp; &emsp; &emsp;  Aidan Thompson

## **Data Source**
Datasource: https://www.kaggle.com/datasets/airbnb/seattle

## **Data Files**
Two csv files downloaded and added to the 'Resource' folder for this project.<br>

•	**calendar.csv** : This file has detailed listings data in Seatle that has the accomodation, reviews and Airbnb host, listing and Property Information.<br>
•	**listings.csv** : This file has detailed calendar data, availability and price in Seatle. <br>

## **Step 1: Extract Data**
Data extraction is based on the csv files in the resource folder and codes below:<br>

i. **listings.csv**
   ~~~~python
   listings_file = "Resources/listings.csv"
   listings_df = pd.read_csv(listings_file, encoding="utf8")
   ~~~~
ii. **calendar.csv**
   ~~~~python	
   calendar_file = "Resources/calendar.csv"
   calendar_df = pd.read_csv(calendar_file, encoding="utf8")
   ~~~~
<br>
Our Kaggle dataset initially included a calendar.csv, listings.csv and reviews.csv file each containing a range of different data columns. We decided that for the purposes of our analysis we could not use the reviews.csv file as it contained qualitative data such as reviewer names of airbnb's and their review comments. Data such as this would be difficult to draw any major conclusions from. From the calendar.csv, the most important data column for our purposes was the price listings for each airbnb. By using the listings_id column in the calendar.csv we can join it to the listins.csv table on the id column and be able to compare the price from calendar.csv to many different variables contained in listings.csv. The dataset describes all listings activity of homestays in Seattle, WA since 2008. To make the above data extractions, we used Jupyter Notebook and pandas's read_csv function to load the raw csv's from our Resources folder.

## **Step 2: Transform Data**
After our data was loaded and ready, there were a number of steps needed to prepare and clean the data before any analysis could be made:

1. Removing NaN values and replacing NaN values for price with $0.
2. Removing duplicates in the id or listings_id columns to avoid having duplicate primary keys. 
3. Breaking down the listings.csv columns into multiple confined tables that have specific focus points. 
4. Creating new data frames for reviews, host responses, and property types by selecting relevant columns from the intitial data frame.
5. Checking datatypes and making conversions from strings to integers.
6. Making conditions to eliminate invalid data points. e.g. Zipcodes can not have more or less characters than 5. Setting a condition to remove any zipcode not equal to 5 characters in length removes invalid zipcodes.
7. Converting data types to be used in calculations and removing symbols such as ($,%,',', etc). e.g. Price, monthly price, and weekly price removing '$' and converting to an integer.

## **Step 3: Load Data**
The created SQL schema has four tables:<br>
 - 'calendar'<br>
 - 'listings_host'<br>
 - 'listings_reviews'<br>
 - 'type_and_price'<br>

A PostgresSQL connection established using sqlalchemy:<br>
~~~~python
from sqlalchemy import create_engine
from sqlalchemy import inspect
~~~~

Then a proper postgresSQL protocol, username and password were utlities to fulfill the credential requirements. 

Next, the engine is used to upload all the SQL tables.

