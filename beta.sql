CREATE TABLE users(id SERIAL PRIMARY KEY, ide_number TEXT NOT NULL, first_name VARCHAR(30) NOT NULL, last_name VARCHAR(30) NOT NULL, mobile_number TEXT NOT NULL, address TEXT NULL, email TEXT NOT NULL UNIQUE, password TEXT NOT NULL, status BOOLEAN DEFAULT true, created_at TIMESTAMPTZ DEFAULT now(), updated_at TIMESTAMPTZ DEFAULT now(), deleted_at TIMESTAMPTZ DEFAULT now());



CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    ide_number TEXT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    mobile_number TEXT NOT NULL,
    address TEXT NULL,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    status BOOLEAN DEFAULT true,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),
    deleted_at TIMESTAMPTZ DEFAULT now()
);


INSERT INTO users (ide_number, first_name, last_name, mobile_number, email, password) VALUES ('1234567890', 'John', 'Doe', '555-1234', 'john.doe@example.com', 'password123');


--select * from users;
select * from users u;


/*
INSERT INTO users (
ide_number, 
first_name, 
last_name, 
mobile_number, 
email, 
password
) 

VALUES 
(
'1234567890', 
'Peter', 
'Perez', 
'555-1234', 
'Pepe.doe2@example.com', 
'password123546');

*/

select 
u.first_name as nombres, 
u.last_name as apellido,
u.first_name ||' '|| u.last_name as fullname,
case when u.status = true then 'Activo' else 'Inactivo' end
from users u;
