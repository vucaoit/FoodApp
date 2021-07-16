import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'Foods.dart';

class Food_item extends StatelessWidget{
  Food snack;
  Food_item({required this.snack});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Image(image: AssetImage(snack.pathImage),
            height: 100,
              width: 100,
            ),
            Expanded(child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${snack.content}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Price: ",style: TextStyle(
                        fontSize: 15,
                      ),
                      ),
                      Text("${snack.price}\$",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

}