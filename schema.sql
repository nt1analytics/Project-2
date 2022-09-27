DROP TABLE IF EXISTS listings_host

CREATE TABLE listings_host (
id INT PRIMARY KEY,
host_response_rate VARCHAR,
host_acceptance_rate VARCHAR,
host_is_superhost VARCHAR,
zipcode INT
);