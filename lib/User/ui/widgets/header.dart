import 'package:flutter/material.dart';


class Header extends StatefulWidget {
  Header({Key key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150.0,
      color: Colors.red,

      child: Row(
        children:<Widget>[
            Text("Descrube", style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: Colors.black
            )),
            IconButton(icon: Icon(Icons.search), onPressed: (){},
            iconSize: 35,
            color: Colors.black,
            )
        ]
      ),
    );
  }
}