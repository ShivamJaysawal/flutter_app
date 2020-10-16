import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/home_page_with_fb.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:path/path.dart';
import 'package:flutter_app/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Contants.prefs=await SharedPreferences.getInstance();


  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Shivam App",
    home:Contants.prefs.getBool("loggedIn")==true
        ?HomePageFB()
        :LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    routes: {
      "/login":(BuildContext)=>LoginPage(),
      "/home":(BuildContext)=>HomePage(),
    },
  ));

}


