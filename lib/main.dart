import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Model/Category_item.dart';
import 'package:food_app/page/Categories_page.dart';
import 'package:food_app/page/FoodPage.dart';
import './Data/CatagoriesData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        FoodPage.RoutePage: (context)=>FoodPage(),
        Categories_page.RoutePage:(context)=>Categories_page()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page",
          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
          ),),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'CATEGORIES',
                    style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 3,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.blue,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'CATEGORIES',
                    style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 3,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Categories_page(),
                  ))
            ],
          )
        ),
      ),
    );
  }
}
