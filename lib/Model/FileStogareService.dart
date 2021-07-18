import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class FileStogareService extends ChangeNotifier{
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  firebase_storage.Reference ref =
  firebase_storage.FirebaseStorage.instance.ref('/images/menu/caodev.png');
  Future<String> downloadURLExample(String patch) async {
    String downloadURL = await firebase_storage.FirebaseStorage.instance
        .ref(patch)
        .getDownloadURL();
    print(downloadURL);
    return downloadURL;
    // Within your widgets:
    // Image.network(downloadURL);
  }
  Future<void> listExample() async {
    firebase_storage.ListResult result =
    await firebase_storage.FirebaseStorage.instance.ref().listAll();

    result.items.forEach((firebase_storage.Reference ref) {
      print('Found file: $ref');
    });

    result.prefixes.forEach((firebase_storage.Reference ref) {
      print('Found directory: $ref');
    });
  }
}