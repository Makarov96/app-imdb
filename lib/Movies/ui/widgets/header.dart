import 'package:flutter/material.dart';
import 'package:movies/Movies/ui/screens/searchmoviewscreen.dart';
import 'package:movies/Widgets/Transitions/slide_route.dart';

class HeaderMovies extends StatefulWidget {
  final  String texto;
  HeaderMovies({Key key, @required this.texto}) : super(key: key);

  @override
  _HeaderMoviesState createState() => _HeaderMoviesState();
}

class _HeaderMoviesState extends State<HeaderMovies> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30),
        child: Container(
          margin: EdgeInsets.only(top:30),
          width: double.infinity,
          child: Row(
            children:<Widget>[
                Text(widget.texto, style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.black
                )),
                Spacer(),
                IconButton(icon: Icon(Icons.search), onPressed: (){
                 Navigator.push(context, SlideLeftRoute(page: ScreenSearchMovies()));
                },
                iconSize: 35,
                color: Colors.black,
                )
            ]
          ),
        ),
      ),
    );
  }
}