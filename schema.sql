DROP TABLE IF EXISTS listings_host

CREATE TABLE listings_host (
id INT PRIMARY KEY,
host_response_rate VARCHAR,
host_acceptance_rate VARCHAR,
host_is_superhost VARCHAR,
zipcode INT
);


-- Jose creating tables to add data into sql. 


DROP TABLE IF EXISTS calendar

-- Creating the Table, setting primary key and types on columns. 

CREATE TABLE calendar( 
listing_id INT,
date DATE,
available TEXT,
price DECIMAL 
);



-- Check that the Table has been properly created.
SELECT * FROM calendar

---------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS listings_reviews

-- Creating the Table, setting primary key and types on columns.

CREATE TABLE listings_reviews( 
id INT PRIMARY KEY,
number_of_reviews INT,
review_scores_rating DECIMAL 
);

DROP TABLE IF EXISTS calendar

-- Creating the Table, setting primary key and types on columns. 

CREATE TABLE type_and_price( 
id INT PRIMARY KEY,
property_type TEXT,
room_type TEXT,
accommodates INT
square_feet INT
weekly_price INT
monthly_price INT
);


-- Check that the Table has been properly created.

SELECT * FROM listings_reviews




--join test--
SELECT calendar.listing_id, calendar.date, calendar.available, 
calendar.price, listings_host.host_response_rate, listings_host.host_acceptance_rate
FROM calendar
JOIN listings_host
ON calendar.listing_id = listings_host.id