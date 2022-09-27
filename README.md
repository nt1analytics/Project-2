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

## **Step 2: Transform Data**
Before being able to consume data, it has to be cleaned. This process includes:<br>
1. Removing any symbols such as (e.g. $,%,',', etc.)
2. Dropping rows with null values.
3. Converting the numerical columns from string to a number.
<br>

## **Step 3: Load Data**
xxx:<br>

TBC
<br>
