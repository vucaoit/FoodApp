import 'package:flutter/material.dart';
import 'package:food_app/Model/Category.dart';
class Category_item extends StatelessWidget{
  Category category;
  Category_item({required this.category});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color _color=this.category.color;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(this.category.pathImage),
          fit: BoxFit.cover,
        ),
        color: _color,
        gradient: LinearGradient(
          colors: [
            _color.withOpacity(0.6),
            _color
          ]
        ),
        border: Border.all(
          width: 2,
          color: this.category.color,
        ),
        borderRadius: BorderRadius.circular(10)
      ),
     // color: _color,
      alignment: Alignment.center,
      child: Text(category.content,
      style: TextStyle(
          fontWeight: FontWeight.bold,
        fontSize: 30,
        fontFamily: "zenloop",
        color: Colors.white,
      ),
      ),
    );
  }

}