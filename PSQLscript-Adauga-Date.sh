#!/bin/bash -x
sudo -u postgres psql -h localhost -p 5433 << EOFMYSQL
\c studenti
INSERT INTO tabellll (name,lastname,address,telephone)
VALUES ('Marius', 'Popescu', 'Arad', '0743124334'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon'),
('Nume', 'Prenume', 'Oras', 'Telefon');
SELECT * FROM tabellll;
EOFMYSQL
