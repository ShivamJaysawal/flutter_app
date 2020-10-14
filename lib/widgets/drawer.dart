import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          /*DrawerHeader(
              child: Text("Hi, I am drawer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(color: Colors.purpleAccent),
            ),*/
          UserAccountsDrawerHeader(
            accountName: Text("Shivam Jaysawal"),
            accountEmail: Text("shivamsomu123@gmail.com"),
            currentAccountPicture:CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit,color: Colors.purpleAccent),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("shivamsomu123@gmail.com"),
            trailing: Icon(Icons.send,color: Colors.purpleAccent),
          )



        ],
      ),
    );
  }
}
