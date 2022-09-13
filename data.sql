/* Start Day 1 Queries  */

insert into animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) values (1,'Agumon','02-03-2020', 0, true, 10.23)
insert into animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) values (2,'Gabumon','11-15-2018', 2, true, 8.0)
insert into animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) values (3,'Pikachu','01-07-2021', 1, false, 15.04)
insert into animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) values (4,'Devimon','05-12-2017', 5, true, 11)

/* End Day 1 Queries  */

/* Start Day 2 Queries  */

insert into animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) values (5,'Charmander','02-08-2020', 0, false, -11)
insert into animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) values (6,'Plantmon','11-15-2021', 2, true, -5.7)
insert into animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) values (7,'Squirtle','04-02-1993', 3, false, -12.13)
insert into animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) values (8,'Angemon','06-12-2005', 1, true, -45)
insert into animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) values (9,'Boarmon','06-07-2005', 7, true, 20.4)
insert into animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) values (10,'Blossom','10-13-1998', 3, true, 17)
insert into animals (id,name,date_of_birth,escape_attempts, neutered, weight_kg) values (11,'Ditto','05-14-2022', 4, true, 22)

/* End Day2 Queries  */

/* Start Day 3 Queries  */

insert into owners (full_name,age) values ('Sam Smith',34)
insert into owners (full_name,age) values ('Jennifer Orwell',19)
insert into owners (full_name,age) values ('Bob ',45)
insert into owners (full_name,age) values ('Dean Winchester',14)
insert into owners (full_name,age) values ('Melody Pond',77)
insert into owners (full_name,age) values ('Jodie Whittaker',38)

insert into species (name) values ('Pokemon')
insert into species (name) values ('Digimon')

update animals set species_id=2 where name like '%mon';
update animals set species_id=1 where name not like '%mon';

update animals set owner_id=1 where name like 'Agumon';
update animals set owner_id=2 where name like 'Gabumon' or name like 'Pikachu';
update animals set owner_id=3 where name like 'Devimon' or name like 'Squirtle';
update animals set owner_id=6 where name like 'Charmander' or name like 'Squirtle' or name like 'Blossom';
update animals set owner_id=4 where name like 'Angemon' or name like 'Boarmon';

-- End Day3 Queries --

-- Start Day4 Queries --
insert into vets (name,age, date_of_graduation) values ('William Tatcher',45, '04-23-2000');
insert into vets (name,age, date_of_graduation) values ('Maisy Smith',26, '01-17-2019');
insert into vets (name,age, date_of_graduation) values ('Stephanie Mendez',64, '05-04-1981');
insert into vets (name,age, date_of_graduation) values ('Jack Harkness',38, '06-08-2008');

-- End Day4 Queries --
