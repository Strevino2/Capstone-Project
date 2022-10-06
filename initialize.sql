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
  ("Appetizers", "Fried Onions Rings", "$7.29", null),
  ("Appetizers", "Fried Mushrooms", "$10.99", null),
  ("Appetizers", "Fried Green Tomatoes", "$11.99", null),
  ("Appetizers", "Fried Zucchini & Yellow Squash","$11.99", null),
  ("Appetizers", "Cupboard Sampler","$15.29", "Hand-Breaded Green Tomatoes, Onion Rings, Zucchini, Squash."),
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
  ("From the Grill","World's Best Chicken Fried Steak! (Nearly 3 Dozen Sold)", "$13.99", "Hand-Battered, and smothered in our Country Gravy.  Also available in large."),
  ("From the Grill","Grilled or Chicken fried pork chops", "$14.29", "Two of our AWARD WINNING (Texas Monthly) T-Bone style pork chops, Hand-Battered and Fried to perfection.  Country gravy served on the side."),
  ("From the Grill","Country Fried Chicken", "$14.29", "Chicken Breast, Hand-Battered and fried until golden brown.  Country Gravy on the side."),
  ("From the Grill","Hamburger Steak", "$12.89", "8oz Hamburger Steak smothered with Sautéed Onions and Brown Gravy."),
  ("From the Grill","Mushroom Swiss Steak", "$13.89", "8oz Hamburger Steak topped with Sautéed Mushrooms."),
  ("From the Grill","Southwest Hamburger Steak", "$14.99", "8oz Hamburger Steak topped with Sautéed Mushrooms, Onions, Jalapenos, and Mixed Cheddar."),
  ("From the Grill","Southwest Grilled Catfish or Chicken", "$13.99", "Grilled Tender Catfish or Chicken Morsels with grilled Mushrooms, Jalapenos, Onions.  Topped with Mixed Cheddar.  Served over a bed of Seasoned Rice."),
  ("From the Grill","Mushroom Swiss Catfish or Chicken", "$13.99", "Grilled Tender Catfish or Chicken Morsels, with grilled Mushrooms, topped with Melted Swiss.  Served over a bed of Seasoned Rice."),
  ("From the Grill","Teriyaki Catfish or Chicken", "$12.29", "Grilled Tender Catfish or Chicken Morsels, teriyaki sauce.  Served over a bed of Seasoned Rice"),
  ("Cupboard Burgers","Cowboy Burger", "$6.99", "1/3lb Burger Patty, See server or online ordering for customizable toppings.  Also available as a combo with fries and an Iced Tea or Soda for $10.99."),
  ("Cupboard Burgers","Double Meat Burger", "$10.99", "Two 1/3lb Burger Patties, See server or online ordering for customizable toppings.  Also available as a combo with fries and an Iced Tea or Soda for $13.99."),
  ("Hill Country Baskets","Steak Strip Basket", "$11.29", null),
  ("Hill Country Baskets","Chicken Basket", "$11.49", null),
  ("Hill Country Baskets","Small Chicken Basket", "$9.29", null),
  ("Hill Country Baskets","Catfish Basket", "$11.89", null),
  ("Hill Country Baskets","Add a side for", "$2.25", null),
  ("Cupboard Sandwiches","The Southerner", "$11.99", "Our Hand-Breaded World's Best Chicken Fried Steak.  Served on Texas toast"),
  ("Cupboard Sandwiches","The Lady Bird", "$12.99", "Grilled Chicken Breast with Grilled Onions, Mushrooms, and Swiss.  Served on Texas toast."),
  ("Cupboard Sandwiches","The Rooster", "$13.29", "Country Fried Chicken Breast with Grilled Onions, Mushrooms, and Swiss.  Served with our homemade Buttermilk Ranch Dressing on Texas Toast."),
  ("Cupboard Sandwiches","Texas Grilled Cheese", "$8.29", "Amerian, Swiss, and Mixed Cheddar with Grilled Onions, Mushrooms, Tomatoes, and Jalapenos.  Served on Texas Toast."),
  ("Cupboard Sandwiches","Country Club", "$11.89", "Hot Ham and Bacon, American Cheese, Lettuce, and Tomato, served on Grilled Toast."),
  ("Cupboard Sandwiches","Grilled Cheese", "$5.99", "American and Swiss Cheese"),
  ("Hill Country Salads","Chicken Fried Steak Salad", "$11.99", "Our Hand-Breaded World's Best Chicken Fried Steak, served on fresh cut Romaine, topped with Tomatoes and Mixed Cheddar"),
  ("Hill Country Salads","Country Fried or Grilled Chicken Salad", "$13.29", "Chicken Morsels, served on fresh cut Romaine, topped with Tomatoes and Mixed Cheddar"),
  ("Hill Country Salads","Taco Salad", "$12.99", "Deep-Fried Flour Tortilla shell filled our Homemade Frijoles, fresh cut romaine, Tomatoes, Mixed Cheddar and topped with Seasoned Beef.  Get it with Grilled Chicken instead for $13.99"),
  ("Hill Country Salads","Chef Salad", "$13.29", "Fresh cut Romaine, with Bacon, Ham, and Boiled Eggs, topped with Tomatoes, Mixed Cheddar."),
  ("Hungry Man Breakfast","Chicken Fried Steak", "$11.99", "One egg any style.  Get two eggs for $13.29"),
  ("Hungry Man Breakfast","Country Fried or Grilled Pork Chops", "$13.99", "Two eggs any style."),
  ("Hungry Man Breakfast","Triple Play", "$14.69", "Three eggs any style served with Ham, Bacon, and Sausage."),
  ("Quick Breakfast","Quick Breakfast", "$9.69", "Choice of one Ham, Bacon, and Sausage.  Served with choice of Potato or Grits and one type of Bread.  Add an extra Egg $11.99."),
  ("Quick Breakfast","Breakfast Taco", "$3.99", "One Egg, Potato, and choice of meat(Ham, Bacon, Sausage, or Chorizo)."),
  ("Quick Breakfast","BELT Sandwich", "$8.29", "Bacon, Egg, Lettuce, Tomato, and Cheese."),
  ("Quick Breakfast","Build your style Omelet", "$9.29", "Comes with 2 eggs, cheese, and your choice of potato or grits and one type of bread.  Add veggies, an additional egg, or 1-2 meats for an extra charge per request.  See your server or online ordering for details."),
  ("Pancakes and Biscuits","Ultimate Biscuits", "$9.29", "Two open-faced biscuits, Mixed with crumbled Sausage and scrambled Egg and smothered with Country Gravy."),
  ("Pancakes and Biscuits","Biscuits 'n Sausage Gravy", "$7.29", null),
  ("Pancakes and Biscuits","Biscuits 'n Gravy", "$5.29", null),
  ("Pancakes and Biscuits","Pick Three", "$8.49", "Pancake, Egg, Hash Browns, Biscuit, Toast, Grits, Country Fried Potato(1 of each)."),
  ("Pancakes and Biscuits","Pancake", "$3.25", "Add an additional Pancake, Egg, or Meat for an additional charge.  See your server or online ordering for details."),
  ("Texican Style Breakfast","Migas Compuestas", "$9.29", "Two Eggs scrambled with Corn tortilla chips, Onions, Tomatoes, abd Bell pepper."),
  ("Texican Style Breakfast","Huevos Rancheros", "$9.69", "Two Eggs any style, served with over corn tortillas, topped with Ranchero Sauce."),
  ("Texican Style Breakfast","Huevos a la Mexicana", "$9.69", "Two Eggs scrambled with chopped Onions, Tomatoes, and Onions."),
  ("Texican Style Breakfast","Chuleta con Huevos", "$10.29", "Two Eggs any style, served with Mexican sausage, tomatoes, and onions."),
  ("Texican Style Breakfast","Huevos con Chorizo", "$9.29", "Two eggs scrambled with Mexican Sausage, Tomatoes, and Onions."),
  ("Texican Style Breakfast","Chilaquiles", "$9.89", "Two Eggs scrambled with Corn tortilla chips and Onions, topped with Swiss cheese."),
  ("Drinks from the Cupboard","Sweet or Reg Tea", "$2.99", null),
  ("Drinks from the Cupboard","Coffee or Decaf", "$2.99", null),
  ("Drinks from the Cupboard","Peach Tea", "$3.99", null),
  ("Drinks from the Cupboard","Hot Tea", "$2.99", null),
  ("Drinks from the Cupboard","Soda Pop (Can soda)", "$1.99", null),
  ("Drinks from the Cupboard","Lemonade", "$3.49", null),
  ("Drinks from the Cupboard","Bottled Water", "$1.75", null),
  ("Drinks from the Cupboard","Regular Moo", "$3.49", null),
  ("Drinks from the Cupboard","Chocolate Moo", "$3.99", null),
  ("Drinks from the Cupboard","Orange Juice", "$3.49", null),
  ("Drinks from the Cupboard","Apple Juice", "$3.49", null),
  ("Drinks from the Cupboard","Cranberry Juice", "$3.49", null),
  ("A 'La Carte","Biscuits(2)", "$2.75", null),
  ("A 'La Carte","Toast(2)", "$1.99", null),
  ("A 'La Carte","One Pancake", "$3.25", null),
  ("A 'La Carte","Hash Browns", "$3.25", null),
  ("A 'La Carte","Grits", "$2.99", null),
  ("A 'La Carte","Refried Beans", "$2.99", null),
  ("A 'La Carte","Sliced Tomatoes", "$2.99", null),
  ("A 'La Carte","One Egg", "$3.15", null),
  ("A 'La Carte","Cream Gravy(4oz)", "$2.75", null),
  ("A 'La Carte","Sausage Gravy", "$4.99", null),
  ("A 'La Carte","Ham(2 slices)", "$3.99", null),
  ("A 'La Carte","Sausage(2 patties)", "$3.99", null),
  ("A 'La Carte","Bacon (3 slices)", "$4.29", null),
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