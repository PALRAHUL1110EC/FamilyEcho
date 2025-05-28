CREATE TABLE Person (
    person_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1), -- 'M' (Male), 'F' (Female), 'O' (Other)
    birth_date DATE,
    mother_id INT,
    father_id INT,
    spouse_id INT,

    FOREIGN KEY (mother_id) REFERENCES Person(person_id),
    FOREIGN KEY (father_id) REFERENCES Person(person_id),
    FOREIGN KEY (spouse_id) REFERENCES Person(person_id)
);

--
-- Parents
INSERT INTO Person (person_id, first_name, last_name, gender, birth_date)
VALUES
(1, 'John', 'Doe', 'M', '1970-01-01'),
(2, 'Jane', 'Doe', 'F', '1972-05-12');

-- Add spouse relationship
UPDATE Person SET spouse_id = 2 WHERE person_id = 1;
UPDATE Person SET spouse_id = 1 WHERE person_id = 2;

-- Children
INSERT INTO Person (person_id, first_name, last_name, gender, birth_date, mother_id, father_id)
VALUES
(3, 'Emily', 'Doe', 'F', '1995-07-01', 2, 1),
(4, 'Ethan', 'Doe', 'M', '1998-09-21', 2, 1);
------------

select * from Person

SELECT * FROM Person
WHERE mother_id = (
    SELECT person_id FROM Person WHERE first_name = 'Jane' AND last_name = 'Doe'
);
