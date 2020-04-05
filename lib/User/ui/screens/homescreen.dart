import 'package:flutter/material.dart';
import 'package:movies/User/ui/widgets/headeruser.dart';
import 'package:movies/Widgets/backgroud_gradient.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Stack(
        children:<Widget>[
          BackgroundGradient(height:screenHeight*0.4),
          HeaderUser(),
          Column(
            children:<Widget>[

            ]
          )
        ]
      ),
    );
  }
}