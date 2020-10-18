import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/home_page_with_fb.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:path/path.dart';
import 'package:flutter_app/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

 main() {


  runApp(MyApp());

}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   StreamController<double> controller=StreamController();
   StreamSubscription streamSubscription;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Shivam App",
        home:Scaffold(
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("Subscribe"),
                  color: Colors.yellow,
                  onPressed: (){
                    Stream stream=controller.stream;
                    streamSubscription =  stream.listen((value){
                      print('Value from controller: $value');
                    });
//-----get manual stream example---------------------------------------------
//on this way ,stream is by default broadcast, means multiple listener allowed
                 /*  getDelayedRandomValues().listen((value){
                      print('Value from controller: $value');
                    });*/

                  },

                ),
                MaterialButton(
                  child: Text("Emit(Add) value"),
                  color: Colors.blue,
                  onPressed: (){
                  controller.add(12);

                  },

                ),
                MaterialButton(
                  child: Text("UnSubscribe"),
                  color: Colors.red,
                  onPressed: (){
                    streamSubscription?.cancel();
                  },

                )
              ],
            ),
          ),
        )


    );
  }
  Stream<double> getDelayedRandomValues() async*{
    var random=Random();
    while(true){
     await Future.delayed(Duration(seconds: 1));
     yield random.nextDouble();
    }

  }
}



