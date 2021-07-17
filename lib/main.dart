import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Model/Category_item.dart';
import 'package:food_app/Model/FoodListView.dart';
import 'package:food_app/Model/Food_item.dart';
import 'package:food_app/Model/MyCart.dart' as Mycart;
import 'package:food_app/page/Categories_page.dart';
import 'package:food_app/page/FoodPage.dart';
import './Data/CatagoriesData.dart';
import 'package:intl/intl.dart';
import 'package:flutter_sms/flutter_sms.dart';
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
  void _sendSMS(String message, List<String> recipents) async {
    String _result = await sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
    print(_result);
  }
  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    final formatter = new NumberFormat("#,##");
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  _scaffoldKey.currentState!.showBottomSheet((context) {
                    return StatefulBuilder(builder: (BuildContext build,StateSetter setState){
                      return Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(child: ListView.builder(
                                  itemCount: Mycart.listFood.length,
                                  itemBuilder: (context,index){
                                    return Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Image(
                                              image: AssetImage(Mycart.listFood[index].pathImage),
                                              height: 100,
                                              width: 100,
                                            ),
                                            padding: EdgeInsets.only(left: 10),
                                          ),
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.only(left: 10),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("${Mycart.listFood[index].content}",
                                                    style: TextStyle(
                                                        fontSize: 20
                                                    ),
                                                  ),
                                                  Text("Price : ${Mycart.listFood[index].price}\$",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(//icon Remove
                                            child: IconButton(
                                              icon: Icon(Icons.highlight_remove_outlined,size: 40,),
                                              onPressed: (){
                                                showDialog(context: context, builder: (BuildContext build){
                                                  return AlertDialog(
                                                    title: Text("Do you want remove this item?"),
                                                    content: Text("Select your choose"),
                                                    actions: [
                                                      TextButton(
                                                        child: Text("REMOVE"),
                                                        onPressed: () {
                                                          setState(() {
                                                          Navigator.of(build).pop();
                                                          Mycart.listFood.removeAt(index);
                                                          });
                                                        },
                                                      ),
                                                      TextButton(
                                                        child: Text("CANCEL"),
                                                        onPressed: () {
                                                          Navigator.of(build).pop();
                                                        },
                                                      )
                                                    ],
                                                  );
                                                });
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }
                              )),
                              Container(
                                padding: EdgeInsets.only(left: 10,right: 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text("Total : ${NumberFormat.currency(locale:'eu').format(Mycart.totalList()).substring(0,NumberFormat.currency(locale:'eu').format(Mycart.totalList()).length-4)}\$",
                                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: FlatButton(
                                          splashColor: Colors.pinkAccent,
                                          onPressed: (){
                                            String message = "Order id : 351\n"+"Total : ${NumberFormat.currency(locale:'eu').format(Mycart.totalList()).substring(0,NumberFormat.currency(locale:'eu').format(Mycart.totalList()).length-4)}\$";
                                            List<String> recipents = ["0335511248"];
                                            _sendSMS(message, recipents);
                                          },
                                          child: Text('Order', style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 20
                                          )
                                          ),
                                          textColor: Colors.white,
                                          shape: RoundedRectangleBorder(side: BorderSide(
                                              color: Colors.blue,
                                              width: 1,
                                              style: BorderStyle.solid
                                          ), borderRadius: BorderRadius.circular(50)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
                  });
                },
                  child: Icon(
                    Icons.shopping_cart,
                    size: 30.0,
                  ),
              )
          ),
        ],
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
