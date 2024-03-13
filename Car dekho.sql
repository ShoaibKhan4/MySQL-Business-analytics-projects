create schema cars;
use cars;
-- Read Data --
select* from car_dekho;
-- Total cars; to get a count of total record. --
select count(*) from car_dekho;

-- The manager asked the employee, How many cars will be available in 2023? --
select count(*) from car_dekho where year = 2023;

-- the manager asked the employee,  How many cars were available in year 2020, 2021, 2022? --
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7

-- Group (By shortcut) --
select count(*) from car_dekho where year in (2020, 2021, 2022) group by year;

-- Clint asked me to print the total of all cars by year. I don't see all the details. --
select year, count(*) from car_dekho group by year;

-- Clint asked the car dealer, How many diesel cars will there be in year 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";
 	
-- Clint asked the car dealer, How many petrol cars will there be in year 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "Petrol"; 
	
-- The maanger asked the employee to give a print of all the fuel cars (petrol, diesel, CNG) come by all year. --
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars? --
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<50;

-- The manager asked the employee about all the car count details between 2015 and 2023 , he need a complete list --
select count(*) from car_dekho where year between 2015 and 2023; 

-- The manager asked the employee about all the car details between 2015 and 2023 , he need a complete list --
select*from car_dekho where year between 2015 and 2023; 

-- END --