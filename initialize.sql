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
  menu_type VARCHAR(50),
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
	(menu_type, menu_name, menu_description, menu_size, menu_price)
VALUES 
  ("Appetizers","Fried Onion Rings", "Hand-Breaded Onion Rings", "$7.29"),
  ("Appetizers","Fried Mushrooms", "Hand-Breaded Mushrooms", "$10.99"),
  ("Appetizers","Fried Green Tomatoes", "Hand-Breaded Green Tomatoes", "$11.99"),
  ("Appetizers","Fried Zucchini & Yellow Squash", "Hand-Breaded Onion Rings", "$11.99"),
  ("Appetizers","Cupboard Sampler", "Hand-Breaded Green Tomatoes, Onion Rings, Zucchini, Squash", "$15.29"),
  ("Veggies On The Side","Frijoles", "$3.25"),
  ("Veggies On The Side","Black-Eyed Peas", "$3.25"),
  ("Veggies On The Side","Mashed Potatoes", "$3.25"),
  ("Veggies On The Side","French Fries", "$3.25"),
  ("Veggies On The Side","Cole Slaw (Friday only)", "$3.25"),
  ("Veggies On The Side","Green Beans", "$3.25"),
  ("Veggies On The Side","Fried Okra", "$3.25"),
  ("Veggies On The Side","Seasoned Rice", "$3.25"),
  ("Veggies On The Side","Side Salad", "$3.25"),
  ("Veggies On The Side","Country Fried Potatoes", "$3.25"),
  ("Veggies On The Side","Texas Toast available upon request", "$3.25"),
  ("From the Grill",`"World's Best" Chicken Fried Steak!`, "Hand-Battered, and somthered in our Country Gravy", "Small",  "$11.99"),
  ("From the Grill",`"World's Best" Chicken Fried Steak!`, "Hand-Battered, and somthered in our Country Gravy", "Medium",  "$13.99"),
  ("From the Grill",`"World's Best" Chicken Fried Steak!`, "Hand-Battered, and somthered in our Country Gravy", "Large",  "$15.99"),
  ("From the Grill","Grilled or Chicken fried pork chops", "Two of our AWARD WINING (Texas Monthly) T-Bone style pork chops, hand-battered and fried to perfection.  Country gravy served on the side.", "$14.29"),
  ("From the Grill","Country Fried Chicken", "Chicken Breast, Hand-Battered and fried until golden brown.  Country Gravy on the side.", "$14.29"),
  ("From the Grill","Hamburger Steak", "8oz Hamburger Steak smothered with Sauteed Onions and Brown Gravy", "$12.89"),
  ("From the Grill","World's best chicken fried steak!", "Hand-Battered, and somthered in our country gravy.", "$14.99"),
  ("From the Grill","World's best chicken fried steak!", "Hand-Battered, and somthered in our country gravy.", "$14.99"),
  ("From the Grill","World's best chicken fried steak!", "Hand-Battered, and somthered in our country gravy.", "$14.99"),
  ("BreakFast","Pancakes and Eggs", "description here", "$9.99"),
  ("Beverages","Pina Colada", "description here", "$6.99");
  ("Specials", "Monday Special", "Meatloaf and mashed potatoes. Comes with a sweet tea", "$10.99")
  ("Specials", "Tuesday Special", "Chicken fried steak or Chicken fried pork chops. Comes with a sweet tea", "$10.99")
  ("Specials", "Wednesday Special", "Meatloaf and mashed potatoes. Comes with a sweet tea", "$10.99")
  ("Specials", "Thursday Special", "Crispy tacos. Comes with a sweet tea", "$10.99")
  ("Specials", "Friday Special", "Catfish and fries. Comes with a sweet tea", "$10.99")
  ("Specials", "Saturday Special", "N/A, Comes with a sweet tea", "$10.99")
  ("Specials", "Sunday Special", "N/A, Comes with a sweet tea", "$10.99")

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