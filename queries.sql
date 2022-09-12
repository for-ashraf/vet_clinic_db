-- Start: Day 01 Queries 
select * from animals where name like '%mon'
select name from animals where date_of_birth >= '2016-01-01' AND date_of_birth <  '2019-12-31'
select name from animals where neutered=true and escape_attempts < 3
select date_of_birth from animals where name like 'Agumon' or name like 'Pikachu'
select name, escape_attempts from animals where weight_kg > 10.5
select * from animals where neutered = true
select * from animals where name != 'Gabumon'
select * from animals where weight_kg >= 10.4  and weight_kg <= 17.3
-- End: Day 01 Queries

-- Start: Day 02 Queries 
