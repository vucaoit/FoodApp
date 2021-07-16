import 'package:flutter/material.dart';
import '../Model/Foods.dart';
const String pathFastFood="assets/images/Foods/FastFood/";
const String pathSnack="assets/images/Foods/Snacks/";
const String pathNoodle="assets/images/Foods/Noodlies/";
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
  // Food(id: 1, content: content, price: price, categoryId: 4, pathImage: pathNoodle+'1.jpg'),
  // Food(id: 2, content: content, price: price, categoryId: 4, pathImage: pathNoodle+'2.jpg'),
  // Food(id: 3, content: content, price: price, categoryId: 4, pathImage: pathNoodle+'3.jpg'),
  // Food(id: 4, content: content, price: price, categoryId: 4, pathImage: pathNoodle+'4.jpg'),
  // Food(id: 5, content: content, price: price, categoryId: 4, pathImage: pathNoodle+'5.jpg'),
  // Food(id: 6, content: content, price: price, categoryId: 4, pathImage: pathNoodle+'6.jpg'),
  // Food(id: 7, content: content, price: price, categoryId: 4, pathImage: pathNoodle+'7.jpg'),
  // Food(id: 8, content: content, price: price, categoryId: 4, pathImage: pathNoodle+'8.jpg'),
  // Food(id: 9, content: content, price: price, categoryId: 4, pathImage: pathNoodle+'9.jpg'),
  // Food(id: 10, content: content, price: price, categoryId: 4, pathImage: pathNoodle+'10.jpg'),
];