DROP TABLE IF EXISTS users, menu, hoursOfOperation, usersCredentials;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE menu (
  id INT NOT NULL AUTO_INCREMENT,
  -- user_id INT NOT NULL,
  menu_type VARCHAR(99),
  menu_name VARCHAR(99),
  menu_price VARCHAR(99),
  menu_description VARCHAR(200),
  PRIMARY KEY (id)
  -- FOREIGN KEY (user_id)
--   REFERENCES users (id)
--   ON DELETE CASCADE
);

CREATE TABLE hoursOfOperation (
  id INT NOT NULL AUTO_INCREMENT,
  -- user_id INT NOT NULL,
  dining_room VARCHAR(100),
  day VARCHAR(50),
  startHours VARCHAR(50),
  endHours VARCHAR(50),
  PRIMARY KEY (id)
  -- FOREIGN KEY (user_id)
--   REFERENCES users (id)
--     ON DELETE CASCADE
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
	(menu_type, menu_name, menu_price, menu_description)
VALUES 
  ("Appetizers", "Fried Onion Rings", "$7.29", "Hand-Breaded Onion Rings"),
  ("Appetizers", "Fried Mushrooms", "$10.99", "Hand-Breaded Mushrooms"),
  ("Appetizers", "Fried Green Tomatoes", "$11.99", "Hand-Breaded Green Tomatoes"),
  ("Appetizers", "Fried Zucchini & Yellow Squash","$11.99", "Hand-Breaded Onion Rings"),
  ("Appetizers", "Cupboard Sampler","$15.29", "Hand-Breaded Green Tomatoes, Onion Rings, Zucchini, Squash"),
  ("Veggies On The Side", "Frijoles", "$3.25", null),
  ("Veggies On The Side", "Black-Eyed Peas", "$3.25", null),
  ("Veggies On The Side", "Mashed Potatoes", "$3.25", null),
  ("Veggies On The Side", "French Fries", "$3.25", null),
  ("Veggies On The Side", "Cole Slaw (Friday only)", "$3.25", null),
  ("Veggies On The Side", "Green Beans", "$3.25", null),
  ("Veggies On The Side", "Fried Okra", "$3.25", null),
  ("Veggies On The Side", "Seasoned Rice", "$3.25", null),
  ("Veggies On The Side", "Side Salad", "$3.25", null),
  ("Veggies On The Side", "Country Fried Potatoes", "$3.25", null),
  ("Veggies On The Side", "Texas Toast available upon request", "$3.25", null),
  ("From the Grill","World's Best Chicken Fried Steak! (Nearly 3 Dozen Sold)", "$11.99", "Hand-Battered, and smothered in our Country Gravy"),
  ("From the Grill","World's Best Chicken Fried Steak! (Nearly 3 Dozen Sold)", "$13.99", "Hand-Battered, and smothered in our Country Gravy"),
  ("From the Grill","World's Best Chicken Fried Steak! (Nearly 3 Dozen Sold)", "$15.99", "Hand-Battered, and smothered in our Country Gravy"),
  ("From the Grill","Grilled or Chicken fried pork chops", "$14.29", "Two of our AWARD WINNING (Texas Monthly) T-Bone style pork chops, hand-battered and fried to perfection.  Country gravy served on the side."),
  ("From the Grill","Country Fried Chicken", "$14.29", "Chicken Breast, Hand-Battered and fried until golden brown.  Country Gravy on the side."),
  ("From the Grill","Hamburger Steak", "$12.89", "8oz Hamburger Steak smothered with Sauteed Onions and Brown Gravy"),
  ("From the Grill","World's best chicken fried steak!", "$14.99", "Hand-Battered, and smothered in our country gravy."),
  ("From the Grill","World's best chicken fried steak!", "$14.99", "Hand-Battered, and smothered in our country gravy."),
  ("From the Grill","World's best chicken fried steak!", "$14.99", "Hand-Battered, and smothered in our country gravy."),
  ("Hill Country Baskets","Steak Strip Basket", "$11.29", null),
  ("Hill Country Baskets","Chicken Basket", "$11.49", null),
  ("Hill Country Baskets","Small Chicken Basket", "$9.29", null),
  ("Hill Country Baskets","Catfish Basket", "$11.89", null),
  ("BreakFast","Pancakes and Eggs", "$9.99", null),
  ("Beverages","Pina Colada", "$6.99", null),
  ("Specials", "Monday Special", "$10.99","Meatloaf and mashed potatoes. Comes with a sweet tea"),
  ("Specials", "Tuesday Special", "$10.99", "Chicken fried steak or Chicken fried pork chops. Comes with a sweet tea"),
  ("Specials", "Wednesday Special", "$10.99", "Meatloaf and mashed potatoes. Comes with a sweet tea"),
  ("Specials", "Thursday Special", "$10.99", "Crispy tacos. Comes with a sweet tea"),
  ("Specials", "Friday Special", "$10.99", "Catfish and fries. Comes with a sweet tea"),
  ("Specials", "Saturday Special", "$10.99", "N/A, Comes with a sweet tea"),
  ("Specials", "Sunday Special", "$10.99", "N/A, Comes with a sweet tea");

INSERT INTO hoursOfOperation
	(dining_room, day, startHours, endHours)
VALUES 
  ("Restaurant","Monday", "7am", "3pm"),
  ("Restaurant","Tuesday", "7am", "3pm"),
  ("Restaurant","Wednesday", "7am", "3pm"),
  ("Restaurant","Thursday", "7am", "3pm"),
  ("Restaurant","Friday", "7am", "4pm"),
  ("Restaurant","Saturday", "7am", "4pm"),
  ("Restaurant","Sunday", "7am", "4pm"),
  ("Bar","Saturday", "8pm", "12pm");