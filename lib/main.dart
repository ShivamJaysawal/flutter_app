import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(MaterialApp(
    title: "Shivam App",
    home: HomePage()
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Container(
        child: Center(child: Text("Hi Fluttewr")),
      ),
    );
  }
}
