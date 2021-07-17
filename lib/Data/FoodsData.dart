import 'package:flutter/material.dart';
import '../Model/Foods.dart';
const String pathFastFood="assets/images/Foods/FastFood/";
const String pathSnack="assets/images/Foods/Snacks/";
const String pathNoodle="assets/images/Foods/Noodlies/";
const String vegetarian="assets/images/Foods/Vegetarian/";
const String coffe="assets/images/Foods/Coffe/";
const String sandwitch="assets/images/Foods/Sandwitch/";
const String cake="assets/images/Foods/Cake/";
const String icecream="assets/images/Foods/Icecream/";
const String bread="assets/images/Foods/Bread/";
const String burger="assets/images/Foods/Burger/";
const FAKE_SNACKS = const [
  //snack
  Food(id: 1, content: "Smucker's", pathImage: pathSnack+"original-triscuit.jpg", price: 12.99, categoryId: 1),
  Food(id: 2, content: 'Cheez-It', price: 14.99, pathImage: pathSnack+"cheez-it-original.jpg", categoryId: 1),
  Food(id: 3, content: 'Cheetos', price: 13.49, pathImage: pathSnack+'Small-bag-of-cheetos.jpg', categoryId: 1),
  Food(id: 4, content: 'Tostitos', price: 3.98, pathImage: pathSnack+'strawberry-uncrustables.jpg', categoryId: 1),
  Food(id: 5, content: 'Nabisco', price: 10.99, pathImage: pathSnack+'tostitos-scoops.jpg', categoryId: 1),
  Food(id: 6, content: 'Jif', price: 5.44, pathImage: pathSnack+'jif-creamy-peanut-butter.jpg', categoryId: 1),
  Food(id: 7, content: 'Fritos', price: 11.18, pathImage: pathSnack+'fritos.jpg', categoryId: 1),
  Food(id: 8, content: 'Cheerios', price: 4.04, pathImage: pathSnack+'cheerios.jpg', categoryId: 1),
  Food(id: 9, content: "Campbell's", price: 27, pathImage: pathSnack+'campbells-tomato-soup.jpg', categoryId: 1),
  Food(id: 10, content: "Doritos", price: 35.98, pathImage: pathSnack+'cool-ranch-doritos.jpg', categoryId: 1),
  //fast Food
  Food(id: 1, content: "KFC Original Recipe Chicken", price: 11.22, categoryId: 2, pathImage: pathFastFood+"kfc-original-bucket-fried-chicken.jpg"),
  Food(id: 2, content: "White Castle Sliders", price: 5.25, categoryId: 2, pathImage: pathFastFood+"mcdonalds-happy-meal-toys.jpg"),
  Food(id: 3, content: "Sonic Cherry Limeade", price: 6.36, categoryId: 2, pathImage: pathFastFood+"Pumpkin-Spice-Latte.jpg"),
  Food(id: 4, content: "Wendy's Frosty", price: 11.2, categoryId: 2, pathImage: pathFastFood+"sonic-cherry-limeade-slush.jpg"),
  Food(id: 5, content: "McDonald's Happy Meal", price: 10.0, categoryId: 2, pathImage: pathFastFood+"taco-bell-burrito-supreme.jpg"),
  Food(id: 6, content: "Starbucks Pumpkin Spice Latte", price: 5.5, categoryId: 2, pathImage: pathFastFood+"taco-bell-nacho-fries.jpg"),
  Food(id: 7, content: "Taco Bell Burrito Supreme", price: 3.5, categoryId: 2, pathImage: pathFastFood+"wendys-frosty-1.jpg"),
  Food(id: 8, content: "Taco Bell's Nacho Fries", price: 11.5, categoryId: 2, pathImage: pathFastFood+"white-castle.jpg"),
  //Noodlies
  Food(id: 1, content: "Shin Ramyun Noodle Soup", price: 5, categoryId: 3, pathImage: pathNoodle+'1.jpg'),
  Food(id: 2, content: "Mi Goreng", price: 6, categoryId: 3, pathImage: pathNoodle+'2.jpg'),
  Food(id: 3, content: "Shrimp Tom Yum Instant Noodles", price: 4, categoryId: 3, pathImage: pathNoodle+'3.jpg'),
  Food(id: 4, content: "2X Spicy Hot Chicken Flavor Ramen", price: 2, categoryId: 3, pathImage: pathNoodle+'4.jpg'),
  Food(id: 5, content: "Instant Lunch Chicken Flavor", price: 4, categoryId: 3, pathImage: pathNoodle+'5.jpg'),
  Food(id: 6, content: "Chapagetti", price: 6, categoryId: 3, pathImage: pathNoodle+'6.jpg'),
  Food(id: 7, content: "Organic Millet & Brown Rice Ramen", price: 7, categoryId: 3, pathImage: pathNoodle+'7.jpg'),
  Food(id: 8, content: "Yakisoba Teriyaki Chicken Flavor", price: 7, categoryId: 3, pathImage: pathNoodle+'8.jpg'),
  Food(id: 9, content: "Vietnamese Beef Pho", price: 1, categoryId: 3, pathImage: pathNoodle+'9.jpg'),
  Food(id: 10, content: "Konjac Noodles", price: 2, categoryId: 3, pathImage: pathNoodle+'10.jpg'),
  //vegeta
  Food(id: 1, content: "Skillet Mac & Cheese", price: 11.25, categoryId: 4, pathImage: vegetarian+'1.jpg'),
  Food(id: 2, content: "Black Bean Tortilla Pie", price: 25.00, categoryId: 4, pathImage: vegetarian+'2.jpg'),
  Food(id: 3, content: "Vegetarian Pad Thai", price: 15.5, categoryId: 4, pathImage: vegetarian+'3.jpg'),
  Food(id: 4, content: "Tuscan Portobello Stew", price: 10.15, categoryId: 4, pathImage: vegetarian+'4.jpg'),
  Food(id: 5, content: "Cheese Enchiladas", price: 21.5, categoryId: 4, pathImage: vegetarian+'5.jpg'),
  Food(id: 6, content: "Mushroom Burgers", price: 4.5, categoryId: 4, pathImage: vegetarian+'6.jpg'),
  Food(id: 7, content: "Tasty Lentil Tacos", price: 11.0, categoryId: 4, pathImage: vegetarian+'7.jpg'),
  Food(id: 8, content: "Grilled Cheese & Tomato Soup Bake", price: 20, categoryId: 4, pathImage: vegetarian+'8.jpg'),
  Food(id: 9, content: "Pronto Vegetarian Peppers", price: 18, categoryId: 4, pathImage: vegetarian+'9.jpg'),
  //coffe
  Food(id: 1, content: "Espresso", price: 2.5, categoryId: 5, pathImage: coffe+"1.png"),
  Food(id: 2, content: "Cappuccino", price: 3.75, categoryId: 5, pathImage: coffe+"2.png"),
  Food(id: 3, content: "Latté", price: 1.25, categoryId: 5, pathImage: coffe+"3.png"),
  Food(id: 4, content: "Americano", price: 2.52, categoryId: 5, pathImage: coffe+"4.png"),
  Food(id: 5, content: "Cold Brew", price: 2.2, categoryId: 5, pathImage: coffe+"5.png"),
  Food(id: 6, content: "Frappuccino/Frappe", price: 5.1, categoryId: 5, pathImage: coffe+"6.png"),
  Food(id: 7, content: "Caffe Mocha", price: 7, categoryId: 5, pathImage: coffe+"7.png"),
  Food(id: 8, content: "Café au Lait", price: 6.25, categoryId: 5, pathImage: coffe+"8.png"),
  Food(id: 9, content: "Macchiato", price: 10, categoryId: 5, pathImage: coffe+"9.png"),
  Food(id: 10, content: "Affogato", price: 11.5, categoryId: 5, pathImage: coffe+"10.png"),
  //SandWitch
  Food(id: 1, content: "Banh Mi – Vietnam", price: 2, categoryId: 6, pathImage: sandwitch+"1.jpg"),
  Food(id: 2, content: "Jamon Beurre – France", price: 3.3, categoryId: 6, pathImage: sandwitch+"2.jpg"),
  Food(id: 3, content: "Panini – Italy", price: 5.1, categoryId: 6, pathImage: sandwitch+"3.jpg"),
  Food(id: 4, content: "Shawarma – Middle East", price: 6, categoryId: 6, pathImage: sandwitch+"4.jpg"),
  Food(id: 5, content: "Torta – Mexico", price: 5, categoryId: 6, pathImage: sandwitch+"5.jpg"),
  Food(id: 6, content: "Vada Pav – India", price: 2.2, categoryId: 6, pathImage: sandwitch+"6.jpg"),
  Food(id: 7, content: "Arepa – Colombia/Venezuela", price: 3.25, categoryId: 6, pathImage: sandwitch+"7.jpg"),
  Food(id: 8, content: "Cuban Sandwich – Florida", price: 5, categoryId: 6, pathImage: sandwitch+"8.jpg"),
  Food(id: 9, content: "Bocadillo – Spain", price: 4.5, categoryId: 6, pathImage: sandwitch+"9.jpg"),
  Food(id: 10, content: "Chip Butty – United Kingdom", price: 1, categoryId: 6, pathImage: sandwitch+"10.jpg"),
  //Cake
  Food(id: 1, content: "Classic Yellow Cake with Chocolate Frosting", price: 2, categoryId: 7, pathImage: cake+"1.jpg"),
  Food(id: 2, content: "Coconut Bundt Cake with White Chocolate-Coconut Glaze", price: 11.5, categoryId: 7, pathImage: cake+"2.jpg"),
  Food(id: 3, content: "Cream Cheese Pound Cake", price: 6.2, categoryId: 7, pathImage: cake+"3.jpg"),
  Food(id: 4, content: "German Chocolate Cake", price: 7.1, categoryId: 7, pathImage: cake+"4.jpg"),
  Food(id: 5, content: "Homemade Rum Cake", price: 2.5, categoryId: 7, pathImage: cake+"5.jpg"),
  Food(id: 6, content: "Peanut Butter Cup Overload Cake", price: 3, categoryId: 7, pathImage: cake+"6.jpg"),
  Food(id: 7, content: "Salted Caramel Apple Cake", price: 4.5, categoryId: 7, pathImage: cake+"7.jpg"),
  Food(id: 8, content: "Snickers Cake", price: 1, categoryId: 7, pathImage: cake+"8.jpg"),
  Food(id: 9, content: "Texas Sheet Cake", price: 5.5, categoryId: 7, pathImage: cake+"9.jpg"),
  Food(id: 10, content: "Ultimate Cookies and Cream Oreo Cake", price:7 , categoryId: 7, pathImage: cake+"10.jpg"),
  //Icream
  Food(id: 1, content: "Vanilla", price: 8, categoryId: 8, pathImage: icecream+"1.jpg"),
  Food(id: 2, content: "Chocolate", price: 1, categoryId: 8, pathImage: icecream+"2.jpg"),
  Food(id: 3, content: "Cookies & Cream", price: 1.25, categoryId: 8, pathImage: icecream+"3.jpg"),
  Food(id: 4, content: "Mint Chocolate Chip", price: 2, categoryId: 8, pathImage: icecream+"4.jpg"),
  Food(id: 5, content: "Chocolate Chip Cookie Dough", price: 3.25, categoryId: 8, pathImage: icecream+"5.jpg"),
  Food(id: 6, content: "Buttered Pecan", price: 1.75, categoryId: 8, pathImage: icecream+"6.jpg"),
  Food(id: 7, content: "Birthday Cake", price: 0.99, categoryId: 8, pathImage: icecream+"7.jpg"),
  Food(id: 8, content: "Strawberry", price: 5.5, categoryId: 8, pathImage: icecream+"8.jpg"),
  Food(id: 9, content: "Moose tracks", price: 3.25, categoryId: 8, pathImage: icecream+"9.jpg"),
  Food(id: 10, content: "Neapolitan", price: 1.25, categoryId: 8, pathImage: icecream+"10.jpg"),
  //bread
  Food(id: 1, content: "French Baguette, France", price: 2.25, categoryId: 9, pathImage: bread+"1.jpg"),
  Food(id: 2, content: "Pita Bread, Middle East", price: 1, categoryId: 9, pathImage: bread+"2.jpg"),
  Food(id: 3, content: "Tortilla, Mexico", price: 2, categoryId: 9, pathImage: bread+"3.jpg"),
  Food(id: 4, content: "Injera, Ethopia", price: 3, categoryId: 9, pathImage: bread+"4.jpg"),
  Food(id: 5, content: "Bagel, Poland", price: 2.25, categoryId: 9, pathImage: bread+"5.jpg"),
  Food(id: 6, content: "Paratha, India", price: 3, categoryId: 9, pathImage: bread+"6.jpg"),
  Food(id: 7, content: "Rugbrod, Denmark", price: 2.75, categoryId: 9, pathImage: bread+"7.jpg"),
  Food(id: 8, content: "Crumpet, UK", price: 1.75, categoryId: 9, pathImage: bread+"8.jpg"),
  Food(id: 9, content: "Focaccia, USA", price: 3.25, categoryId: 9, pathImage: bread+"9.jpg"),
  Food(id: 10, content: "Quick Bread, USA", price: 3.5, categoryId: 9, pathImage: bread+"10.jpg"),
  //burger
  Food(id: 1, content: "Bleecker Black Burger @ Bleecker", price: 5, categoryId: 10, pathImage: burger+"1.jpg"),
  Food(id: 2, content: "The Burger @ Raoul's", price: 7, categoryId: 10, pathImage: burger+"2.jpg"),
  Food(id: 3, content: "The Jackie-O @ Fat Bobs Bar & Grill", price: 11, categoryId: 10, pathImage: burger+"3.jpg"),
  Food(id: 4, content: "American Burger @ Gordon Ramsay Burger", price: 8.5, categoryId: 10, pathImage: burger+"4.jpg"),
  Food(id: 5, content: "The Burger @ Dirty Bones", price: 9.99, categoryId: 10, pathImage: burger+"5.jpg"),
  Food(id: 6, content: "The Ozersky Burger", price: 5.99, categoryId: 10, pathImage: burger+"6.jpg"),
  Food(id: 7, content: "The Smokey Burger @ Burger Liquor", price: 6.99, categoryId: 10, pathImage: burger+"7.jpg"),
  Food(id: 8, content: "The Butchers Club Burger @ The Butchers Club", price: 5.25, categoryId: 10, pathImage: burger+"8.jpg"),
  Food(id: 9, content: "FleurBurger @ Fleur", price: 3.5, categoryId: 10, pathImage: burger+"9.jpg"),
  Food(id: 10, content: "Big Mac @ McDonald’s", price: 5.55, categoryId: 10, pathImage: burger+"10.jpg"),
];