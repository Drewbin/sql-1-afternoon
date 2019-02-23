CREATE TABLE person (
  person_id SERIAL,
  name VARCHAR (200),
  age INT,
  height INT,
  city VARCHAR (200),
  favorite_color VARCHAR (200)
  )
  
  INSERT INTO person (name, age, height, city, favorite_color)
  	VALUES (
      'Drew', 
      38,
      180,
      'Pescara',
      'Red'
     ),
      
     (
      'Tiff',
      37,
      150,
      'Provo',
      'Pink'
     ),

		 (
       'Ross',
       38,
       175,
       'Orem',
       'Blue'
     ),
     
     (
       'Honk',
       36,
       175,
       'Orem',
       'Orange'
     ),
     
     (
       'Esbern',
       36,
       177,
       'Orem',
       'Green'
     )
     
 
SELECT * from person 
	ORDER BY height DESC
  
SELECT * from person 
	ORDER BY height
 
SELECT * from person
	ORDER BY age DESC
  
SELECT name, age FROM person
	WHERE age > 20
  
SELECT name, age FROM person
	WHERE age = 18

SELECT name, age FROM person
	WHERE age < 20 OR age > 30
  
SELECT name, age FROM person
	WHERE age != 27 
  
SELECT name, favorite_color FROM person
	WHERE favorite_color <> 'Red'
  
SELECT name, favorite_color FROM person
	WHERE favorite_color != 'Red' AND favorite_color != 'Blue'

SELECT name, favorite_color FROM person
	WHERE favorite_color = 'Orange' OR favorite_color = 'Green'
  
SELECT name, favorite_color FROM person
	WHERE favorite_color IN ('Orange', 'Green', 'Blue')
  
SELECT name, favorite_color FROM person
	WHERE favorite_color IN ('Yellow', 'Purple')
  
CREATE TABLE orders (
  person_id SERIAL,
  product_name VARCHAR (200),
  product_price INT,
  quantity INT
  )
  
 INSERT INTO orders (person_id, product_name, product_price, quantity)
 	VALUES (
    0,
    'prod 1',
    5,
    10
    ),
    
    (
    1,
    'prod 2',
    12.50,
    10
    ),
    
    (
    2,  
    'prod 3',
    8.99,
    37
    ),
    
    (
    0,
    'prod 4',
    10,
    25
    ),
    
    (
    1,
    'prod 5',
    24.50,
    110
    )
    
SELECT * FROM orders

SELECT SUM(quantity) FROM orders

SELECT SUM(product_price * quantity) FROM orders

SELECT SUM(product_price * quantity) FROM orders
	WHERE person_id = 0
  
INSERT INTO artist (name)
	VALUES ('Rick'), ('Morty'), ('Picasso')
  
SELECT name from artist
	ORDER BY name DESC LIMIT 10 
  
SELECT name from artist
	ORDER BY name LIMIT 5
  
SELECT * FROM artist 
	WHERE name LIKE 'Black%'
  
SELECT * FROM artist 
	WHERE name LIKE '%Black%'
  
SELECT first_name, last_name, city FROM employee
	WHERE city = 'Calgary'
  
SELECT MAX(birth_date) FROM employee

SELECT MIN(birth_date) FROM employee

SELECT * FROM employee
	WHERE first_name = 'Nancy'
  
  SELECT * FROM employee 
  	WHERE reports_to = 2

SELECT COUNT(*) FROM employee
	WHERE city = 'Lethbridge'
  
SELECT COUNT(*) FROM invoice
	WHERE billing_country = 'USA'
  
SELECT MAX(total) FROM invoice

SELECT MIN(total) FROM invoice

SELECT * FROM invoice 
	WHERE total > 5
  
SELECT COUNT(*) FROM invoice
	WHERE total < 5

SELECT * FROM invoice 
	WHERE billing_state IN ('CA', 'TX', 'AZ')
  
SELECT AVG(total) FROM invoice

SELECT SUM(total) from invoice