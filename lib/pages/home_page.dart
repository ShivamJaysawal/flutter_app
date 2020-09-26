import 'package:flutter/material.dart';
import 'package:flutter_app/ChangeNameCard.dart';
import 'package:flutter_app/drawer.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController=TextEditingController();
  var myText="Change Me";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: new ChangeNameCard(myText: myText, nameController: _nameController),
          ),
        ),
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

