import 'package:flutter/material.dart';
import 'package:movies/User/ui/widgets/exports.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children:<Widget>[
            Header(texto: "Descrube",),
          Column(
            children:<Widget>[

            ]
          )
        ]
      ),
    );
  }
}