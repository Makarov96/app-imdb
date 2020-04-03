import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardinfoMovies extends StatefulWidget {
  final int index;
  CardinfoMovies({Key key, @required this.index}) : super(key: key);

  @override
  _CardinfoMoviesState createState() => _CardinfoMoviesState();
}

class _CardinfoMoviesState extends State<CardinfoMovies> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight * 0.45,
      width: screenWidth * 0.45,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(children: <Widget>[
          GestureDetector(
                      child: Container(
              height: screenHeight * 0.3,
              width: screenWidth * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://image.tmdb.org/t/p/w500/rzRwTcFvttcN1ZpX2xv4j3tSdJu.jpg",
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onTap: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  child: CupertinoAlertDialog(
                    title: Column(
                      children: <Widget>[
                        Text("GridView"),
                        Icon(
                          Icons.favorite,
                          color: Colors.green,
                        ),
                      ],
                    ),
                    content: Text("${widget.index}"),
                    actions: <Widget>[
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("OK"))
                    ],
                  ),
                );
              },
          ),
          Container(
              margin: EdgeInsets.only(top: 5.0),
              alignment: Alignment.center,
              child: AutoSizeText("nombre",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.white))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AutoSizeText("${widget.index}",
                  style: TextStyle(fontSize: 13, color: Colors.white)),
              IconButton(
                  iconSize: 25,
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  onPressed: () {})
            ],
          )
        ]),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF0F2F0),
              Color(0xFF000C40),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}

