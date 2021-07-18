import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Model/Category_item.dart';
import 'package:food_app/Model/FileStogareService.dart';
import 'package:food_app/Model/FoodListView.dart';
import 'package:food_app/Model/Food_item.dart';
import 'package:food_app/Model/MyCart.dart' as Mycart;
import 'package:food_app/page/CartPage.dart';
import 'package:food_app/page/Categories_page.dart';
import 'package:food_app/page/FoodPage.dart';
import './Data/CatagoriesData.dart';
import 'package:intl/intl.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'Model/NavigationDrawerWidget.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
enum UploadType {
  /// Uploads a randomly generated string (as a file) to Storage.
  string,

  /// Uploads a file from the device.
  file,

  /// Clears any tasks from the list.
  clear,
}
class MyApp extends StatelessWidget {
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
  FirebaseAnalyticsObserver(analytics: analytics);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        FoodPage.RoutePage: (context) => FoodPage(),
        Categories_page.RoutePage: (context) => Categories_page(),
        CartPage.RoutePage:(context)=> CartPage()
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
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    final formatter = new NumberFormat("#,##");
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, CartPage.RoutePage);
                },
                child: Icon(
                  Icons.shopping_cart,
                  size: 30.0,
                ),
              )),
        ],
        title: Text(
          "Home Page",
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
            )),
      ),
    );
  }
}
