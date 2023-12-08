/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT name, date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

BEGIN; 
UPDATE animals SET species = 'unspecified'; 
SELECT * FROM animals;

ROLLBACK; 
SELECT * FROM animals;

BEGIN; 
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT * FROM animals;

COMMIT; 
SELECT * FROM animals;

BEGIN; 
DELETE FROM animals; 
SELECT * FROM animals;

ROLLBACK; 
SELECT * FROM animals;

BEGIN; DELETE FROM animals WHERE date_of_birth > '2022-01-01';

SAVEPOINT before_update;

UPDATE animals SET weight_kg = weight_kg * -1;

ROLLBACK TO before_update;

UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;



