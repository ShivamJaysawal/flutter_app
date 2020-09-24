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
      body: Center(
        child: Container(

          width: 100,
          height: 100,
          padding: EdgeInsets.all(8),
          alignment:Alignment.center ,
          decoration: BoxDecoration(
           borderRadius:BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10,offset: Offset(2.0,10.0))],
            color: Colors.teal,
            gradient: LinearGradient(
              colors: [Colors.yellow,Colors.red]
            )
          ),
          child: Text("I am a box",textAlign: TextAlign.center,style: TextStyle(
            color: Colors.white,
            fontWeight:FontWeight.bold,
            fontSize: 20
          ),),
        ),
      )
    );
  }
}
