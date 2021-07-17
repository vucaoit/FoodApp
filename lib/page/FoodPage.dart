import 'package:flutter/material.dart';
import 'package:food_app/Model/Category.dart';
import 'package:food_app/Model/FoodListView.dart';
import 'package:food_app/Model/MyCart.dart';
import '../Data/FoodsData.dart';

class FoodPage extends StatefulWidget{
  static const String RoutePage='/FoodsPage';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FoodPage();
  }
  
}
class _FoodPage extends State<FoodPage>{
  late final Category category;
  String findInp='';
  final findEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Category;
    return Scaffold(
        appBar: AppBar(
          title: Text("${arguments.content} Page",
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                    child: TextField(
                      controller: findEditingController,
                      onChanged: (text){
                        this.setState(() {
                         this.findInp=text;
                          print(text);
                        });
                      },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Search',
                        ),
                    ),
                  ),
                  Expanded(child: FoodListView(category: arguments,findName: this.findInp,))
                ],
              )
          ),
        ),
    );
  }
}