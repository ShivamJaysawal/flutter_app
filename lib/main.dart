import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:path/path.dart';
import 'package:flutter_app/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

main() {

  print("Main program start here");
  printFileContent();
  print("Main program ends here");
}
printFileContent() async{
  String fileContent=await downloadFile();
  print("Main program Printing File Content :$fileContent");
}
Future<String> downloadFile(){
  Future<String> result=Future.delayed(Duration(seconds: 6),(){
    return "My Secret File Content";
  });
  return result;
}



