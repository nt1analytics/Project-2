![Seattle Airbnb](https://storage.googleapis.com/kaggle-datasets-images/393/804/669cd834cb82eb3f7fbded566dd02e92/dataset-cover.jpeg)
# **Project 2 - Seattle Airbnb**
For this project, we decided to look at airbnb data in Seattle. The two tables we intend to use are the calendar.csv and listings.csv joined with “listing_id” in the calendar table and “id” in the listings ktable. Our reason for linking these tables is to be able to compare the price in the calendars table with the various information in the listings table such as room type, square feet, zip code and reviews rating. After cleaning the relevant columns we plan to upload the data to PostgreSQL.

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
xxx:<br>

TBC
<br>

## **Step 3: Load Data**
xxx:<br>

TBC
<br>
