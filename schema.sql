/* Database schema to keep the structure of entire database. */
CREATE TABLE animals (
	id integer SERIAL PRIMARY KEY,
	name VARCHAR,
	date_of_birth date,
	escape_attempts integer,
	neutered bool,
	weight_kg DECIMAL
);

ALTER TABLE animals ADD species VARCHAR;

-- Start Day 3 Tasks

CREATE TABLE owners (
	id SERIAL PRIMARY KEY,
	full_name VARCHAR,
	age integer
);

CREATE TABLE species (
	id SERIAL PRIMARY KEY,
	name VARCHAR
);

-- End Day 3 Tasks
