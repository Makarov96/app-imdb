import 'package:flutter/material.dart';
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/ui/widgets/body_movie_review.dart';
import 'package:movies/Movies/ui/widgets/headerreview.dart';
import 'package:movies/Movies/ui/widgets/information_movie_review.dart';

class ScreenReviewMovie extends StatefulWidget {
  Movie movie;
  ScreenReviewMovie({Key key, this.movie}) : super(key: key);

  @override
  _ScreenReviewMovieState createState() => _ScreenReviewMovieState();
}

class _ScreenReviewMovieState extends State<ScreenReviewMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children:<Widget>[
          InformationMovieReview(movie: widget.movie),
           HeaderReview(),
         Column(
           children:<Widget>[
              BodyMovieReview(movie: widget.movie)
           ]
         )
        ]
      ),
    );
  }
}