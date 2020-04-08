import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/bloc/blocmovies.dart';
import 'package:movies/Movies/model/addlikemovie.dart';
import 'package:movies/Movies/model/findmoviemodel.dart';
import 'package:movies/Movies/ui/widgets/cadsearchmovies.dart';
import 'package:movies/Utils/controlError.dart';

class HeaderSearch extends StatefulWidget {
  HeaderSearch({Key key}) : super(key: key);

  @override
  _HeaderSearchState createState() => _HeaderSearchState();
}

class _HeaderSearchState extends State<HeaderSearch> {
  BlocMovies blocMovies;

  @override
  Widget build(BuildContext context) {
    blocMovies = BlocProvider.of<BlocMovies>(context);

    return SafeArea(
      top: true,
      bottom: false,
      child: Container(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SearchBar(
          icon: IconButton(
              iconSize: 25,
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          onSearch: blocMovies.findMoviesCustom,
          onItemFound: (Result result, int index) {
            return Container(
                child: CardSearchinfoMovies(
              movie: Result(
                  backdropPath: result.backdropPath,
                  overview: result.overview,
                  posterPath: result.posterPath,
                  voteAverage: result.voteAverage,
                  title: result.title),
              onPressed: () {
                blocMovies
                    .addLikeMovie(AddlikeModel(
                        mediaId: result.id, mediaType: "movie", favorite: true))
                    .whenComplete(() {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                              "Se agrego con exito a tu lista de favoritos con exito"),
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
                }).catchError((error) {
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
                  ControlError().showErrorMethod(error);
                });
              },
            ));
          },
        ),
      )),
    );
  }
}
