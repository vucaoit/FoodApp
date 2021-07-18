import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_app/Model/FileStogareService.dart';
import 'package:food_app/page/CartPage.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
class NavigationDrawerWidget extends StatelessWidget {
  // firebase_storage.FirebaseStorage storage =
  //     firebase_storage.FirebaseStorage.instance;
String linkurl='';
  @override
  Widget build(BuildContext context) {
    FileStogareService().downloadURLExample("/images/menu/caodev.png").then((String value){
      linkurl=value;
      print(value);
    });
    // TODO: implement build
    return Drawer(
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.only(left: 10, right: 10, top: 50),
        child: Column(
          children: [
            Container(
              //image profile
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(100)),
              child: ClipOval(
                  child: Image.network(
                    linkurl,
                    fit: BoxFit.cover,
                    width: 90.0,
                    height: 90.0,
                  )
              ),
            ),
            Container(
              //some information
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Text(
                    "THIS IS NAME",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text("THISISEMAIL@gmail.com",
                      style: TextStyle(fontSize: 20, color: Colors.white))
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              //some button here
              padding: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  _buildBodyItemMenu(Icons.shopping_cart, "Your Cart", () {
                    Navigator.pushNamed(context, CartPage.RoutePage);
                  }),
                  _buildBodyItemMenu(Icons.wallet_giftcard, "Your Orders", () { }),
                  _buildBodyItemMenu(Icons.location_history, "Your Address", () { }),
                  _buildBodyItemMenu(Icons.person, "Your Infor", () { }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  _buildBodyItemMenu(IconData icon,String text,VoidCallback onclick){
  return ListTile(
    leading: Icon(icon,color: Colors.white,),
    title: Text(text,style: TextStyle(color: Colors.white),),
    onTap: onclick,
  );
  }
}
