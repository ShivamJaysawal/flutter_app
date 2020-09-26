import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/pages/home_page.dart';

void main(){
  runApp(MaterialApp(
    title: "Shivam App",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
  ));
}


