import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Screen_Sizes/Responsive_Screens.dart';

class GridViewMovies extends StatelessWidget {
  GridViewMovies({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double _pixeRatio = MediaQuery.of(context).devicePixelRatio;
    bool small = ResponsiveWidget.isScreenSmall(screenWidth, _pixeRatio);
    bool medium = ResponsiveWidget.isScreenMedium(screenWidth, _pixeRatio);
    bool large = ResponsiveWidget.isScreenLarge(screenWidth, _pixeRatio);

    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
      child: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (small != medium || small != large) ? 4 : 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
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
          }),
    );
  }
}
