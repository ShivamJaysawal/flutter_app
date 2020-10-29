import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/ChangeNameCard.dart';
import 'package:flutter_app/widgets/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_app/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageSB extends StatefulWidget {

  @override
  _HomePageSBState createState() => _HomePageSBState();
}

class _HomePageSBState extends State<HomePageSB> {

  var url="https://jsonplaceholder.typicode.com/photos";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  Future getData() async{
    var res=await http.get(url);
    var data=jsonDecode(res.body);
    print(data);
    return data;
  }
  Stream<List<String>> getStreamData(){
    var data=Stream<List<String>>.fromIterable([
      List<String>.generate(20, (index)=> "Item $index")
    ]);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Login Screen"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app),onPressed: (){
            Contants.prefs.setBool("loggedIn", false);
            Navigator.pushReplacementNamed(context, "/login");
          },)
        ],
      ),
      body:StreamBuilder(
        stream: getStreamData(),
        builder: (context,snapShot){
          switch(snapShot.connectionState){
            case ConnectionState.none:
              return Center(child: Text("Fetch something"),);
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator(),);
            case ConnectionState.done:
              if(snapShot.hasError){
                return Center(child: Text("Some error occured"),);
              }
              return ListView.builder(
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListTile(
                        title:Text(snapShot.data[index]) ,
                            ),
                    );
                  },
                  itemCount: snapShot.data.length
              );




          }

        },
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(onPressed:(){
        /*myText=_nameController.text;
        setState(() {

        });*/
      },
          child: Icon(Icons.refresh)),
    );
  }
}

