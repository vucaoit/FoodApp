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
    Food food=snack;
    return Container(
      child: Row(
        children: [
          Expanded(
              child:
            InkWell(
              splashColor: Colors.black12,
              onTap: (){
                Scaffold.of(context).showBottomSheet((context){
                  return Container(
                    padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                    height: 400,
                    color: Colors.black12,
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child:
                              Image(
                                image: AssetImage(snack.pathImage),
                                height: 100,
                                width: 100,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(width: 5),
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${snack.content}"),
                                  Text("Price: ${snack.price}")
                                ],
                              ),
                              padding: EdgeInsets.only(left: 10),
                            ),
                          ],
                        )
                      ],
                    )

                  );
                });
              },
              child: Container(
                //color: (food.id%2==0) ? Colors.black12 : Colors.white70,
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
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
            )
          ),
          Container(
          child: IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Increase volume by 10',
            iconSize: 40,
            onPressed: () {
              print("Oke");
            },
          ),
          ),
        ],
      ),
    );
  }

}