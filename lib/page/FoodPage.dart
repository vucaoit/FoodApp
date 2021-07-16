import 'package:flutter/material.dart';
import 'package:food_app/Model/Category.dart';
import 'package:food_app/Model/FoodListView.dart';

class FoodPage extends StatelessWidget{
  static const String RoutePage='/FoodsPage';
  late final Category category;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final arguments = ModalRoute.of(context)!.settings.arguments as Category;
    //this.category=arguments['category'];
    return Scaffold(
      body: Center(
        child: FoodListView(category: arguments,)
      ),
    );
  }
  
}