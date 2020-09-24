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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            color: Colors.black,
            width: 350,
            height: 350,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(

                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(8),
                    color: Colors.red,
                  ),
                  Container(

                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(8),
                    color: Colors.yellow,
                  ),
                  Container(

                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(8),
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
