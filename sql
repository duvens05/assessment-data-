CREATE TABLE owner(
owner_id SERIAL PRIMARY KEY,
username VARCHAR(30),
email_address VARCHAR(30)
);
CREATE TABLE animal(
animal_id SERIAL PRIMARY KEY,
animal_img TEXT, 
owner_id INT NOT NULL REFERENCES owner(owner_id)
);
CREATE TABLE animal_type(
animal_type_id SERIAL PRIMARY KEY, 
animal_type_img TEXT,
animal_id INT NOT NULL REFERENCES animal(animal_id),
owner_id INT NOT NULL REFERENCES owner(owner_id)
);
CREATE TABLE animal_food(
animal_food_id SERIAL PRIMARY KEY, 
food_name VARCHAR(10),
animal_id INT NOT NULL REFERENCES animal(animal_id)
);
--  one to one : owner > animal ,
--  many to many : animal type > food type ,
--  one to many : animal > animal types