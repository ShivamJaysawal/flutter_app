import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/bg_image.dart';
import 'package:flutter_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController=TextEditingController();
  final passwordController=TextEditingController();
  final formKey=GlobalKey<FormState>();
  final scaffoldKey=GlobalKey<ScaffoldState>();
  var _userName;
  var _password;

  void _submit(){
    final form= formKey.currentState;
    if(form.validate()){
      form.save();
      //code for show snackbar--------------------------------
     /* final snackBar=SnackBar(
        content: Text("Username:$_userName,Password:$_password"),
      );
      scaffoldKey.currentState.showSnackBar(snackBar);*/
     //code for navigate------------------
      //----1st way---
     // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      //---2nd way using routes-----------
      Navigator.pushNamed(context, "/home");

    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BgImage(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Form(
                        key: formKey,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[

                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Username",
                                  hintText: "Enter Username"
                                ),
                                validator: (val)=>val.isEmpty?"Invalid Username":null,
                                onSaved: (val)=>_userName=val,
                              ),
                              SizedBox(height: 20,),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    hintText: "Enter Password"
                                ),
                                validator: (val)=>val.length<6?"Password too short":null,
                                onSaved: (val)=>_password=val,
                              ),
                              SizedBox(height: 20,),
                              RaisedButton(
                                onPressed: _submit,
                                child: Text("Sign In",),
                                color: Colors.purple,
                                textColor: Colors.white,


                              )


                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
