DROP DATABASE IF EXISTS Travel_Agency;
CREATE DATABASE Travel_Agency character set utf8;
USE Travel_Agency;
CREATE TABLE Countries 
(
Country_id numeric NOT NULL,
Country_name varchar(30) NOT NULL, 
Visa_price numeric(8.2) DEFAULT 0
);

CREATE TABLE Routes 
(
Route_id numeric NOT NULL,
Route_name varchar(25) NOT NULL, 
Country_id numeric NOT NULL
);

CREATE TABLE Sales 
(
Sale_id numeric NOT NULL,
Sale_date date,
Route_id numeric NOT NULL,
Trip_purpose varchar(25) DEFAULT NULL,
Trip_price numeric(9,2) NOT NULL,
Trip_quantity numeric(5) DEFAULT 0
);

ALTER TABLE Countries
	ADD primary key (Country_id);	
ALTER TABLE Routes
	ADD primary key (Route_id),
	ADD CONSTRAINT FK_routes
	FOREIGN KEY (Country_id)
	REFERENCES Countries(Country_id)
	ON DELETE RESTRICT
	ON UPDATE CASCADE;	
ALTER TABLE Sales
	ADD primary key (Sale_id),
	ADD CONSTRAINT FK_sales
	FOREIGN KEY (Route_id)
	REFERENCES Routes(Route_id)
	ON DELETE RESTRICT
	ON UPDATE CASCADE;