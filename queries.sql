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
begin;
update animals set species='unspecified'
ROLLBACK;

Begin;
update animals set species='digimon' where name like '%mon'
update animals set species='pokemon' where species=''
commit;

Begin;
delete from animals;
ROLLBACK;

Begin;
SAVEPOINT delete_animals;
delete from animals where date_of_birth > '01-01-2022';
update animals set weight_kg=weight_kg*-1;
ROLLBACK to SAVEPOINT delete_animals;
update animals set weight_kg=weight_kg*-1 where weight_kg < 0;
COMMIT;

select count(*) from animals;
select count (*) from animals where escape_attempts = 0
select avg(weight_kg) from animals;
select name, escape_attempts,neutered from animals order by escape_attempts desc, neutered;
SELECT MAX(weight_kg), MIN(weight_kg) FROM animals; 
SELECT avg(escape_attempts) FROM animals date_of_birth >= '1990-01-01' AND date_of_birth <  '2000-12-31';



