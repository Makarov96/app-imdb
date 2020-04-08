import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/bloc/blocmovies.dart';
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/ui/widgets/body_movie_review.dart';
import 'package:movies/Movies/ui/widgets/headerreview.dart';
import 'package:movies/Movies/ui/widgets/information_movie_review.dart';
import 'package:movies/User/model/addwatchlistmodel.dart';
import 'package:movies/Utils/controlError.dart';
import 'package:movies/Widgets/custombutton.dart';

class ScreenReviewMovie extends StatefulWidget {
  Movie movie;
  ControlError controlError;
  ScreenReviewMovie({Key key, this.movie}) : super(key: key);

  @override
  _ScreenReviewMovieState createState() => _ScreenReviewMovieState();
}

class _ScreenReviewMovieState extends State<ScreenReviewMovie> {
  BlocMovies blocMovies;
  @override
  Widget build(BuildContext context) {
    blocMovies = BlocProvider.of(context);
    return Scaffold(
      body: Stack(children: <Widget>[
        InformationMovieReview(movie: widget.movie),
        Column(children: <Widget>[
          Expanded(
              child: SingleChildScrollView(
            child: Column(children: <Widget>[
              BodyMovieReview(movie: widget.movie),
              CustomButton(onPressed: (){
                blocMovies.addWatchlist(Addwatchlistmodel(
                  mediaId: widget.movie.id,
                  mediaType: "movie",
                  watchlist: true
                )).whenComplete((){
                   showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                              "Se agrego con exito a tu lista de ver despues"),
                          actions: [
                            FlatButton(
                              child: Text("Cerrar"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        );
                      });
                })
                .catchError((error){
                   showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                              "Algo salio mal vuelve a intentarlo mas tarde"),
                          actions: [
                            FlatButton(
                              child: Text("Cerrar"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        );
                      });
                  widget.controlError.showErrorMethod(error);
                });
              },)
            ]),
          ))
        ]),
         HeaderReview(),
      ]),
    );
  }
}
