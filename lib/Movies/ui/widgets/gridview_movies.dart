import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/bloc/blocmovies.dart';
import 'package:movies/Movies/model/moviemodel.dart';
import 'package:movies/Movies/ui/widgets/card_info_movies.dart';
import 'package:movies/Screen_Sizes/responsive_screens.dart';

class GridViewMovies extends StatefulWidget {
  double _crossAxisSpacing = 15, _mainAxisSpacing = 12, _aspectRatio = 1;

  GridViewMovies({Key key}) : super(key: key);

  @override
  _GridViewMoviesState createState() => _GridViewMoviesState();
}

class _GridViewMoviesState extends State<GridViewMovies> {
  BlocMovies movieBloc;

  @override
  Widget build(BuildContext context) {
    movieBloc = BlocProvider.of(context);
    return FutureBuilder(
        future: movieBloc.getlistMovies(),
        builder: (BuildContext context, AsyncSnapshot<MoviesModel> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.none:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;

            case ConnectionState.done:
              return Center(
                child: movieList(context, snapshot.data.items),
              );
              break;

            case ConnectionState.active:
              return Center(
                child: movieList(context, snapshot.data.items),
              );
              break;
            default:
          }
        });
  }

  Widget movieList(context, List<Movie> listmovie) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double _pixeRatio = MediaQuery.of(context).devicePixelRatio;
    bool small = ResponsiveWidget.isScreenSmall(screenWidth, _pixeRatio);
    bool medium = ResponsiveWidget.isScreenMedium(screenWidth, _pixeRatio);
    bool large = ResponsiveWidget.isScreenLarge(screenWidth, _pixeRatio);

    return Container(
        margin: EdgeInsets.only(top: screenHeight * 0.2),
        child: GridView.builder(
            itemCount: listmovie.length,
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
            itemBuilder: (BuildContext context, int i) {
              final movie = listmovie[i];

              return FadeInLeft(
                duration:  Duration(milliseconds: 10*i),
                child: CardinfoMovies(movie: Movie(
                  backdropPath: movie.backdropPath ,
                  overview: movie.overview ,
                  posterPath: movie.posterPath, 
                  voteAverage: movie.voteAverage, 
                  title: movie.title)),
              );
            }));
  }
}
 /* 
  
 */