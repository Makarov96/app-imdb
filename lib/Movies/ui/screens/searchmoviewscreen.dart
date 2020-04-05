import 'package:flutter/material.dart';
import 'package:movies/Movies/ui/widgets/header_search_screen.dart';



class ScreenSearchMovies extends StatefulWidget {
  @override
  _ScreenSearchMoviesState createState() =>  _ScreenSearchMoviesState();
}

class _ScreenSearchMoviesState extends State<ScreenSearchMovies> {
 

 


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: HeaderSearchScreen(),
        body: Container(
          child:Text("hola")
        ));
  }

}