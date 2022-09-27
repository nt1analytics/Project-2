DROP TABLE IF EXISTS listings_host
DROP TABLE IF EXISTS calendar

CREATE TABLE listings_host (
id INT PRIMARY KEY,
host_response_rate VARCHAR,
host_acceptance_rate VARCHAR,
host_is_superhost VARCHAR,
zipcode INT
);


--join test--
SELECT calendar.listing_id, calendar.date, calendar.available, 
calendar.price, listings_host.host_response_rate, listings_host.host_acceptance_rate
FROM calendar
JOIN listings_host
ON calendar.listing_id = listings_host.id