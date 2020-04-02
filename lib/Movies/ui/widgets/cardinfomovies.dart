import 'package:flutter/material.dart';

class CardinfoMovies extends StatefulWidget {
  CardinfoMovies({Key key}) : super(key: key);

  @override
  _CardinfoMoviesState createState() => _CardinfoMoviesState();
}

class _CardinfoMoviesState extends State<CardinfoMovies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("hola")
    );
  }
}

/*

GestureDetector(
              child: Card(
                elevation: 5.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Item $index'),
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
                    content: Text("Selected Item $index"),
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
            );

 */