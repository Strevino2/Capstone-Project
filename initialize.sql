DROP TABLE IF EXISTS users, menu, hoursOfOperation;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE menu (
  id INT NOT NULL AUTO_INCREMENT,
--   user_id INT NOT NULL,
  dining VARCHAR(50),
  menu_name VARCHAR(50),
  menu_description VARCHAR(50),
  menu_price VARCHAR(50),
  PRIMARY KEY (id),
--   FOREIGN KEY (user_id)
  REFERENCES users (id)
    ON DELETE CASCADE
);

CREATE TABLE hoursOfOperation (
  id INT NOT NULL AUTO_INCREMENT,
--   user_id INT NOT NULL,
  dining_room VARCHAR(100),
  day VARCHAR(50),
  hours VARCHAR(50),
  PRIMARY KEY (id),
--   FOREIGN KEY (user_id)
  REFERENCES users (id)
    ON DELETE CASCADE
);

CREATE TABLE usersCredentials (
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(25),
  password VARCHAR(100),
  PRIMARY KEY (id),
  UNIQUE KEY (username)
);

INSERT INTO users
	(first_name, last_name)
VALUES 
  ("Sandra","Trevino"),
  ("Steven","Trevino"),
  ("Kimberly","Bullock"),
  ("Armando","Trevino");

INSERT INTO menu
	(dining, menu_name, menu_description, menu_price)
VALUES 
  ("BreakFast","Pancakes and Eggs", "description here", "$9.99"),
  ("Lunch","World's best chicken fried steak!", "description here", "$14.99"),
  ("Beverages","Pina Colada", "description here", "$6.99");

INSERT INTO hoursOfOperation
	(dining_room, day, hours)
VALUES 
  ("Restaurant","Monday", "7am-3pm"),
  ("Restaurant","Tuesday", "7am-3pm"),
  ("Restaurant","Wednesday", "7am-3pm"),
  ("Restaurant","Thursday", "7am-8pm"),
  ("Restaurant","Friday", "7am-8pm"),
  ("Restaurant","Saturday", "7am-8pm"),
  ("Restaurant","Sunday", "7am-3pm"),
  ("Bar","Saturday", "8pm-12pm");