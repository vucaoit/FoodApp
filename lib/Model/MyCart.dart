import 'package:flutter/material.dart';
import '../Model/Foods.dart';
  final List<Food> listFood = [];
  void addToCart(Food food){
    listFood.add(food);
  }
  double totalList(){
    double tong=0;
    for(int i=0;i<listFood.length;i++){
      tong+=listFood[i].price;
    }
    return tong;
  }