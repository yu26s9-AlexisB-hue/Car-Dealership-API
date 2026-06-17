-- creating springdealership data base

-- CREATE SCHEMA springdealership;

use springdealership;

-- creating the tables for my vehicle fields
/*
create table vehicle(
vin int auto_increment primary key,
year int not null,
make varchar(50) not null,
model varchar(50) not null,
vehicle_type varchar(50) not null,
color varchar(30),
odometer int,
price decimal(10,2));
*/

INSERT INTO vehicle
( year, make, model, vehicle_type, color, odometer, price)
VALUES
-- ( 2025, 'Honda', 'Civic', 'Sedan', 'Blue', 3234, 54500.00)
( 2023, 'Chevrolet', 'Malibu', 'Sedan', 'White', 22109, 27995.00),
( 2026, 'Tesla', 'Model 3', 'Sedan', 'Silver', 1200, 45999.99),
( 2023, 'Hyundai', 'Tucson', 'SUV', 'Gray', 18765, 31250.00),
(2024, 'Kia', 'Sportage', 'SUV', 'Green', 9320, 29875.50),
(2025, 'Nissan', 'Altima', 'Sedan', 'Black', 6543, 28640.00),
(2023, 'Jeep', 'Wrangler', 'SUV', 'Orange', 11098, 42995.00),
(2024, 'Subaru', 'Outback', 'Wagon', 'Blue', 13455, 36780.25),
(2018, 'Toyota', 'Corolla', 'Sedan', 'Silver', 88432, 14995.00),
(2015, 'Ford', 'Fusion', 'Sedan', 'Gray', 121093, 10995.99),
(2012, 'Honda', 'Accord', 'Sedan', 'Black', 159332, 8995.00),
(2009, 'Chevrolet', 'Tahoe', 'SUV', 'White', 201442, 11995.50),
(2017, 'Nissan', 'Rogue', 'SUV', 'Red', 97321, 16450.00),
(2010, 'Dodge', 'Charger', 'Sedan', 'Blue', 188321, 7999.99),
(2019, 'Mazda', 'CX-5', 'SUV', 'Gray', 65422, 21995.00),
(2016, 'Volkswagen', 'Jetta', 'Sedan', 'Black', 112943, 12499.95),
(2014, 'GMC', 'Sierra', 'Truck', 'White', 143298, 18499.00),
(2021, 'Audi', 'A4', 'Sedan', 'Silver', 42110, 32995.75);
