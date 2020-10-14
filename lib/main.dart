import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:path/path.dart';
import 'package:flutter_app/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

main() {

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shivam App",
      home:Container(
        child: FutureBuilder(
          future: downloadFile(),
          builder: (context,snapShot){
            switch(snapShot.connectionState){
              case ConnectionState.none:
              case ConnectionState.active:
              case ConnectionState.done:
                return Center(

                  child: Text("Content:${snapShot.data}"),
                );

              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),

                );
            }
          },
        ),
      )


  ));

}


Future<String> downloadFile() async{

  String result= await Future.delayed(Duration(seconds: 6),(){
    return "My Secret File Content";
  });

  return result;
}



