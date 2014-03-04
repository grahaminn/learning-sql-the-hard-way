/* This should fail because 0 is already taken. */
INSERT INTO person (id, first_name, last_name, age)
    VALUES (1, 'Frank', 'Smith', 100);

/* We can force it by doing an INSERT OR REPLACE. */
INSERT OR REPLACE INTO person (id, first_name, last_name, age)
    VALUES (1, 'Frank', 'Smith', 100);

SELECT * FROM person;

/* And shorthand for that is just REPLACE. */
REPLACE INTO person (id, first_name, last_name, age)
    VALUES (1, 'Andy', 'Barnett', 23);

/* Now you can see I'm back. */
SELECT * FROM person;

/* Practice REPLACE by replacing the Unicorn with a pet Parrot. */
SELECT * FROM pet;

REPLACE INTO pet (id, name, breed, age)
	VALUES (1, 'Bitey', 'Possum', 30);
	
SELECT * FROM pet;