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

ALTER TABLE animals REMOVE species;
alter table animals add column species_id INTEGER REFERENCES species (id)
alter table animals add column owner_id INTEGER REFERENCES owners (id)

-- End Day 3 Tasks

-- Start Day 4 Tasks -- Join table for visits

CREATE TABLE vets (
	id SERIAL PRIMARY KEY,
	name VARCHAR,
	age integer,
	date_of_graduation date 
);

CREATE TABLE specializations (
  species_id INT,
  vets_id INT,
  PRIMARY KEY (species_id, vets_id),
  CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id),
  CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id)
);

CREATE TABLE visits (
  animal_id INT,
  vets_id INT,
  PRIMARY KEY (animal_id, vets_id),
  CONSTRAINT fk_animal FOREIGN KEY(animal_id) REFERENCES animals(id),
  CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id)
);

-- Start Database Performance Audit:  Day 1:
ALTER TABLE owners ADD COLUMN email VARCHAR(120);

CREATE INDEX idx_ànimal_id ON visits(animal_id);

-- End Database Performance Audit:  Day 1:

