import 'package:flutter/material.dart';
import 'package:movies/Movies/ui/widgets/exports.dart';

class ScreenMovies extends StatefulWidget {

  ScreenMovies({Key key}) : super(key: key);

  @override
  _ScreenMoviesState createState() => _ScreenMoviesState();
}

class _ScreenMoviesState extends State<ScreenMovies> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          GridViewMovies(),
           HeaderMovies(texto: "Descrubre"),
        ],
      ),
    );
  }
}
