import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Movies/ui/widgets/card_info_movies.dart';
import 'package:movies/Screen_Sizes/responsive_screens.dart';

class GridViewMovies extends StatefulWidget {
  double _crossAxisSpacing = 15, _mainAxisSpacing = 12, _aspectRatio = 1;

  GridViewMovies({Key key}) : super(key: key);

  @override
  _GridViewMoviesState createState() => _GridViewMoviesState();
}

class _GridViewMoviesState extends State<GridViewMovies> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double _pixeRatio = MediaQuery.of(context).devicePixelRatio;
    bool small = ResponsiveWidget.isScreenSmall(screenWidth, _pixeRatio);
    bool medium = ResponsiveWidget.isScreenMedium(screenWidth, _pixeRatio);
    bool large = ResponsiveWidget.isScreenLarge(screenWidth, _pixeRatio);
    return Container(
        margin: EdgeInsets.only(top: screenHeight * 0.2),
        child: GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (large) ? 4 : (medium) ? 2 : (small) ? 2 : 2,
              crossAxisSpacing: widget._crossAxisSpacing,
              mainAxisSpacing: widget._mainAxisSpacing,
              childAspectRatio: (large)
                  ? screenWidth / (screenHeight / 0.62)
                  : (medium)
                      ? screenWidth / (screenHeight / 1.03)
                      : (small)
                          ? screenWidth / (screenHeight / 1.03)
                          : screenWidth / (screenHeight / 1.03),
            ),

            itemBuilder: (BuildContext context, int index) {
              return CardinfoMovies(index: index);
            }));
  }
}
