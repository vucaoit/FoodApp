import 'package:flutter/material.dart';
import 'package:food_app/Model/Category.dart';
import 'package:food_app/Model/Foods.dart';
import 'package:food_app/Model/MyCart.dart';
import '../Data/FoodsData.dart';
import 'Food_item.dart';
class FoodListView extends StatelessWidget{
  static const Data=FAKE_SNACKS;
  final Category category;
  String findName='';
  FoodListView({required this.category, required this.findName});
  ListView _buildFoodListView(List<Food> foodlist){
    List<Food> listSnack= foodlist.where((element) =>
    element.categoryId==this.category.id && element.content.toLowerCase().indexOf(findName.toLowerCase())!=-1).toList();
    return ListView.builder(
    itemCount: listSnack.length,
    itemBuilder:(context,index){
        return Food_item(snack: listSnack[index]);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: _buildFoodListView(Data),
    );
  }

}