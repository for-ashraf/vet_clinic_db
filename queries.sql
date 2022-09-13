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
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE  date_of_birth >= '1990/01/01' AND date_of_birth <= '2000/12/31' GROUP BY species 

-- End Day 2 Queries

-- Start Day 3 Queries
select name, owner_id from animals inner join owners on animals.owner_id=owners.id where owners.full_name='Melody Pond';
select animals."name" from animals join species on animals.species_id=species.id where species.name='Pokemon';
select owners.full_name, animals.name from owners left join animals on owners.id=animals.owner_id;
SELECT s.name, COUNT(*) FROM animals an INNER JOIN species s ON s.id = an.species_id GROUP BY s."name" ORDER BY COUNT(*) DESC;
SELECT animals.name, owners.full_name, species.name FROM animals JOIN owners ON animals.owner_id = owners.id JOIN species ON animals.species_id=species.id where owners.full_name='Jennifer Orwell' and species.name='Digimon';
SELECT animals.name, animals.escape_attempts, owners.full_name from animals JOIN owners ON animals.owner_id = owners.id where owners.full_name='Dean Winchester' and escape_attempts=0;
SELECT owners.full_name, count(*) from owners inner join animals on owners.id=animals.owner_id group by owners.full_name order by count(*) desc;
-- End Day 3 Queries

-- Start Day 4 Queries
SELECT v.date as visit_date, a.name, vt.name from visits v 
JOIN animals a 
ON v.animal_id=a.id 
JOIN vets vt 
ON v.vets_id=vt.id 
WHERE vt.name='William Tatcher' 
ORDER BY visit_date 
DESC LIMIT 1;


SELECT COUNT(a.name) from visits v 
JOIN animals a 
ON v.animal_id=a.id 
JOIN vets vt 
ON v.vets_id=vt.id 
WHERE vt.name='Stephanie Mendez';

SELECT species.name 
AS species_type, vt.name 
AS vet_name from specializations s 
JOIN species 
ON s.species_id=species.id FULL 
JOIN vets vt 
ON s.vets_id=vt.id;

SELECT v.date as visit_date, a.name 
AS animal_name, vt.name as vet_name from visits v 
JOIN animals a 
ON v.animal_id=a.id 
JOIN vets vt
ON v.vets_id=vt.id 
WHERE vt.name='Stephanie Mendez' 
AND v.date 
BETWEEN '2020-04-01' AND '2020-08-30';

AS count_visits FROM visits v 
JOIN animals a ON v.animal_id=a.id 
JOIN vets vt ON v.vets_id=vt.id 
GROUP BY a.name 
HAVING COUNT(a.name) = (
    SELECT MAX(myf.count_visits) 
    FROM ( select a.name, COUNT(a.name) 
    AS count_visits from visits v 
    JOIN animals a ON v.animal_id=a.id 
    JOIN vets vt ON v.vets_id=vt.id 
    GROUP BY a.name) 
    AS myf
);

SELECT v.date as visit_day, a.name 
AS animal_name, vt.name AS vet_name 
FROM visits v JOIN animals a 
ON v.animal_id=a.id 
JOIN vets vt 
ON v.vets_id=vt.id 
WHERE vt.name='Maisy Smith' 
ORDER BY v.date 
LIMIT 1;

SELECT v.date as visit_day, a.name 
AS animal_name, vt.name 
AS vet_name 
FROM visits v 
JOIN animals a 
ON v.animal_id=a.id 
JOIN vets vt
ON v.vets_id=vt.id 
ORDER BY v.date 
DESC LIMIT 1;

SELECT vets.name, s.species_id 
FROM vets 
LEFT JOIN specializations s 
ON s.vets_id=vets.id 
WHERE species_id IS NULL;

SELECT species.name, COUNT(species.name) 
AS count_species 
FROM vets 
LEFT JOIN specializations s 
ON s.vets_id=vets.id 
JOIN animals 
ON animals.species_id=s.species_id 
JOIN species 
ON species.id=s.species_id 
WHERE vets.name='Maisy Smith' 
GROUP BY species.name 
ORDER BY count_species 
DESC LIMIT 1;
-- End Day 4 Queries