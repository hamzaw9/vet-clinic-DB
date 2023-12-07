/* Database schema to keep the structure of entire database. */

createdb -U hamza vet_clinic

psql -d vet_clinic

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL
);