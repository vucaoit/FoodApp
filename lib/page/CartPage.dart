import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:food_app/Model/MyCart.dart' as Mycart;
import 'package:flutter_sms/flutter_sms.dart';
class CartPage extends StatefulWidget{
  static const String RoutePage='/CartPage';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CartPage();
  }

}
class _CartPage extends State<CartPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: ListView.builder(
                          itemCount: Mycart.listFood.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image(
                                      image: AssetImage(Mycart
                                          .listFood[index]
                                          .pathImage),
                                      height: 100,
                                      width: 100,
                                    ),
                                    padding:
                                    EdgeInsets.only(left: 10),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding:
                                      EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                        children: [
                                          Text(
                                            "${Mycart.listFood[index].content}",
                                            style: TextStyle(
                                                fontSize: 20),
                                          ),
                                          Text(
                                            "Price : ${Mycart.listFood[index].price}\$",
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //icon Remove
                                    child: IconButton(
                                      icon: Icon(
                                        Icons
                                            .highlight_remove_outlined,
                                        size: 40,
                                      ),
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext
                                            build) {
                                              return AlertDialog(
                                                title: Text(
                                                    "Do you want remove this item?"),
                                                content: Text(
                                                    "Select your choose"),
                                                actions: [
                                                  TextButton(
                                                    child: Text(
                                                        "REMOVE"),
                                                    onPressed: () {
                                                      setState(() {
                                                        Navigator.of(
                                                            build)
                                                            .pop();
                                                        Mycart
                                                            .listFood
                                                            .removeAt(
                                                            index);
                                                      });
                                                    },
                                                  ),
                                                  TextButton(
                                                    child: Text(
                                                        "CANCEL"),
                                                    onPressed: () {
                                                      Navigator.of(
                                                          build)
                                                          .pop();
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
                          })),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Total : ${NumberFormat.currency(locale: 'eu').format(Mycart.totalList()).substring(0, NumberFormat.currency(locale: 'eu').format(Mycart.totalList()).length - 4)}\$",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: FlatButton(
                              splashColor: Colors.pinkAccent,
                              onPressed: () {
                                String message = "Order id : 351\n" +
                                    "Total : ${NumberFormat.currency(locale: 'eu').format(Mycart.totalList()).substring(0, NumberFormat.currency(locale: 'eu').format(Mycart.totalList()).length - 4)}\$";
                                List<String> recipents = [
                                  "0335511248"
                                ];
                                _sendSMS(message, recipents);
                              },
                              child: Text('Order',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20)),
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.blue,
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius:
                                  BorderRadius.circular(50)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
      ,
    );
  }
  void _sendSMS(String message, List<String> recipents) async {
    String _result = await sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
    print(_result);
  }
}