import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/ui/screens/screenreviewmovie.dart';
import 'package:movies/Utils/config.dart';
import 'package:movies/Widgets/Transitions/fade_route.dart';


class CardinfoMovies extends StatefulWidget {
  final Movie movie;

  CardinfoMovies({Key key, this.movie}) : super(key: key);

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
                      "${Config.imagePathURL}${widget.movie.posterPath}",
                    ),
                    fit: BoxFit.cover),
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
                      fontWeight: FontWeight.w400,
                      fontSize: (widget.movie.title.length > 18) ? 10 : 12,
                      color: Colors.white))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AutoSizeText("${widget.movie.voteAverage}",
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
