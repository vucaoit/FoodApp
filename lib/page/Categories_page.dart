import 'package:flutter/material.dart';
import 'package:food_app/Model/MyCart.dart';
import '../Model/Category.dart';
import '../Data/CatagoriesData.dart';
import '../Model/Category_item.dart';

class Categories_page extends StatelessWidget{
  static const String RoutePage='/CategoriesPage';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      children: FAKE_CATEGORIES.map((e) => Category_item(category: e)).toList()
      ,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
    );
  }

}