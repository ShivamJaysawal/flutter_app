import 'package:flutter/material.dart';
import 'package:flutter_app/bg_image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BgImage(),
        SizedBox(
          height: 10,

        ),
        /*Divider(height: 20,color:Colors.purple,),*/
        Text(myText,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        SizedBox(
          height: 10,

        ),
        Container(height: 1,width: double.infinity,color: Colors.purple,),
        SizedBox(
          height: 10,

        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller:_nameController,
            keyboardType: TextInputType.text,
            //obscureText: true,
            // inputFormatters:[WhitelistingTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
                hintText:"Enter somrthing here",
                // hintStyle: TextStyle(fontSize: 20.0, color: Colors.redAccent),
                labelText: "Name",
                // labelStyle: TextStyle(color: Colors.purple),
                border:OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                  color: Colors.blueAccent,
                ))

            ),
          ),
        )


      ],
    );
  }
}