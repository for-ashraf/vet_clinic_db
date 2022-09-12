/* Database schema to keep the structure of entire database. */
CREATE TABLE animals (
	user_id integer SERIAL PRIMARY KEY,
	name VARCHAR,
	date_of_birth date,
	escape_attempts integer,
	neutered bool,
	weight_kg DECIMAL
);

ALTER TABLE animals ADD species VARCHAR;