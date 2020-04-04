import 'package:flutter/material.dart';
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Utils/config.dart';

class InformationMovieReview extends StatelessWidget {
  final Movie movie;
  InformationMovieReview({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return ShaderMask(
        shaderCallback: (rect) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.transparent],
          ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
        },
        blendMode: BlendMode.dstIn,
        child: Container(
          height: screenHeight * 0.4,
          width: screenWidth,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "${Config.imagePathURL}${movie.backdropPath}"))),
        ));
  }
}

/* 






*/
