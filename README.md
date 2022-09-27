# <b>Project 2 - Seattle Airbnb<b>
For this project, we decided to look at airbnb data in Seattle. The two tables we intend to use are the calendar.csv and listings.csv joined with “listing_id” in the calendar table and “id” in the listings table. Our reason for linking these tables is to be able to compare the price in the calendars table with the various information in the listings table such as room type, square feet, zip code and reviews rating. After cleaning the relevant columns we plan to upload the data to PostgreSQL.

## <b>Members<b>
Jose Sandoval  &emsp; &emsp; Vanessa Kemp<br>
Nick Taheri   &emsp; &emsp; &emsp;  Aidan Thompson

## <b>Data Source<b>
Datasource: https://www.kaggle.com/datasets/airbnb/seattle

## <b> Data Files <b>
Two csv files downloaded and added to the 'Resource' folder for this project.<br>

•	<b> calendar.csv </b> : This file has detailed listings data in Seatle that has the accomodation, reviews and Airbnb host, listing and Property Information.<br>
•	<b>listings.csv </b> : This file has detailed calendar data, availability and price in Seatle. <br>

## <b> Step 1: Extract Data <b>
Data extraction is based on the csv files in the resource folder and codes below:<br>

i. listings.csv
   ~~~~python
   listings_file = "Resources/listings.csv"
   listings_df = pd.read_csv(listings_file, encoding="utf8")
   ~~~~
ii. calendar.csv
   ~~~~python	
   calendar_file = "Resources/calendar.csv"
   calendar_df = pd.read_csv(calendar_file, encoding="utf8")
   ~~~~
<br>

## <b> Step 2: Transform Data <b>
xxx:<br>

TBC
<br>

## <b> Step 3: Load Data <b>
xxx:<br>

TBC
<br>
