import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/ChangeNameCard.dart';
import 'package:flutter_app/widgets/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_app/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageFB extends StatefulWidget {

  @override
  _HomePageFBState createState() => _HomePageFBState();
}

class _HomePageFBState extends State<HomePageFB> {
  TextEditingController _nameController=TextEditingController();
  var myText="Change Me";
  var url="https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  getData() async{
    var res=await http.get(url);
    print(res.body);
    data=jsonDecode(res.body);
    print(data);
    setState(() {

    });
  }
  //below function is demo for if u want to show widget on condition basis
  Widget getWidget() {
    if(data!=null){
      return SingleChildScrollView(child: Card());
    }
    else{
      return Center(child: CircularProgressIndicator());
    }
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
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: data!=null
            ? ListView.builder(
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListTile(
                  title:Text(data[index]["title"]) ,
                  subtitle: Text("ID:${data[index]["id"]}"),
                  leading: Image.network(data[index]["thumbnailUrl"],height: 50,width: 50,),
                ),
              );
            },
            itemCount: data.length
        )
            :Center(child: CircularProgressIndicator()),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(onPressed:(){
        myText=_nameController.text;
        setState(() {

        });
      },
          child: Icon(Icons.refresh)),
    );
  }
}

