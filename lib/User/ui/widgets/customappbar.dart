import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => null;
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(top: true, child: Padding(
      padding:  EdgeInsets.only(top:8.0),
      child: setAppBar(),
    ));
  }

  Widget setAppBar() {
    return new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0, 
        titleSpacing: 0.0,
        title: Text("Tu perfil", style: TextStyle(color: Colors.black)),
        actions: <Widget>[
        ],
        leading: new Material(
          color: Colors.transparent,
        ));
  }
}
