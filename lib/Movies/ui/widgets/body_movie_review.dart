import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movies/Movies/model/moviemodel.dart';

class BodyMovieReview extends StatefulWidget {
  Movie movie;
  BodyMovieReview({Key key, this.movie}) : super(key: key);

  @override
  _BodyMovieReviewState createState() => _BodyMovieReviewState();
}

class _BodyMovieReviewState extends State<BodyMovieReview> {


  Widget structurecard(context, screenHeight, screenWidth){

    return Column(
      children: <Widget>[
          Container(
             margin: EdgeInsets.only(top: screenHeight*0.4, left: 12.0),
            child: AutoSizeText("${widget.movie.title}", style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w900
            )),
          ),
         SizedBox(height:35),
          Container(
            margin: EdgeInsets.symmetric(horizontal:15),
            child: AutoSizeText("${widget.movie.overview}", style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            )),
          )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    return SafeArea(
          child: Container(
          child: structurecard(context, screenHeight, screenWidth),
      ),
    );
  }
}