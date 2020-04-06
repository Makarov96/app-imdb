import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/model/findmoviemodel.dart';
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/ui/screens/screenreviewmovie.dart';
import 'package:movies/User/bloc/userbloc.dart';
import 'package:movies/Utils/config.dart';
import 'package:movies/Widgets/Screen_Sizes/responsive_screens.dart';
import 'package:movies/Widgets/Transitions/fade_route.dart';

class CardSearchinfoMovies extends StatefulWidget {
  final Result movie;
  bool cap;

  CardSearchinfoMovies({Key key, this.movie}) : super(key: key);

  @override
  _CardSearchinfoMoviesState createState() => _CardSearchinfoMoviesState();
}

class _CardSearchinfoMoviesState extends State<CardSearchinfoMovies> {

  @override
  void initState() {
    super.initState();
    widget.cap = false;
  }

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double _pixeRatio = MediaQuery.of(context).devicePixelRatio;
    bool medium = ResponsiveWidget.isScreenMedium(screenWidth, _pixeRatio);
    bool large = ResponsiveWidget.isScreenLarge(screenWidth, _pixeRatio);
   

    String imgagePath = "${Config.imagePathURL}${widget.movie.posterPath}";
    (imgagePath == "https://image.tmdb.org/t/p/w500null")
        ? imgagePath = "https://bosquelya.com/img/not-available.png"
        : imgagePath = imgagePath;
    return Container(
        height: screenHeight * 0.48,
        width: screenWidth * 0.45,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 10.0, horizontal: (large) ? 150 : (medium) ? 10 : 10),
          child: Column(children: <Widget>[
            GestureDetector(
              child: Container(
                height: screenHeight * 0.3,
                width: screenWidth * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imgagePath), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    FadeRoute(
                        page: ScreenReviewMovie(
                      movie: Movie(
                          title: widget.movie.title,
                          voteAverage: widget.movie.voteAverage,
                          overview: widget.movie.overview,
                          backdropPath: widget.movie.backdropPath),
                    )));
              },
            ),
            Container(
                margin: EdgeInsets.only(top: 1.5),
                alignment: Alignment.center,
                child: AutoSizeText("${widget.movie.title}",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: (widget.movie.title.length > 18)
                            ? 10
                            : (widget.movie.title.length > 30) ? 5 : 18,
                        color: Colors.black))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                AutoSizeText("${widget.movie.voteAverage}",
                    style: TextStyle(
                        fontSize: (large) ? 28 : (medium) ? 15 : 15,
                        color: Colors.black)),
              
               
              ],
            )
          ]),
        ),
        decoration: BoxDecoration(color: Colors.white));
  }
}
