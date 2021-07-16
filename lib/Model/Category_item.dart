import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Model/Category.dart';
import 'package:food_app/page/FoodPage.dart';
class Category_item extends StatelessWidget{
  Category category;
  Category_item({required this.category});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Color _color=this.category.color;
    return InkWell(
      splashColor: Colors.black45,
      onTap: (){
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //   builder: (context)=>FoodPage()
        //   )
        // );
       // print(this.category.toString());
        Navigator.pushNamed(context, FoodPage.RoutePage,arguments: this.category);
      },
      child: Container(
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
          child: Container(
            color: Colors.black54,
            width: double.maxFinite,
            child: Text(category.content,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: "chewy",
                color: Colors.white,
              ),
            ),
          )
      ),
    );
  }

}