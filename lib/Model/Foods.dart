import 'package:flutter/material.dart';
class Food {
  //this is called "model"
  final int id;
  final String content;
  final String pathImage;
  final double price;
  final int categoryId;
  const Food({
    required this.id,
    required this.content,
    required this.price,
    required this.categoryId,
    required this.pathImage
  });
  @override
  String toString() {
    // TODO: implement toString
    return "$id:$content:$price:$categoryId:$pathImage";
  }
}