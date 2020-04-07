import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/bloc/blocmovies.dart';
import 'package:movies/User/model/myfavoritemovesmodel.dart';
import 'package:movies/Utils/config.dart';

class GridViewMyFavoritesMovies extends StatefulWidget {
  GridViewMyFavoritesMovies({Key key}) : super(key: key);

  @override
  _GridViewMyFavoritesMoviesState createState() =>
      _GridViewMyFavoritesMoviesState();
}

class _GridViewMyFavoritesMoviesState extends State<GridViewMyFavoritesMovies> {
  BlocMovies blocMovies;
  @override
  Widget build(BuildContext context) {
    blocMovies = BlocProvider.of(context);
    return FutureBuilder(
      future: blocMovies.getlistFavoriteMovies(),
      builder:
          (BuildContext context, AsyncSnapshot<Myfavoritemovies> snapshot) {
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
            if (snapshot.data == null) {
              return Center(child: Text("Intenta mas tarde"));
            }
            return myFavoriteMovies(snapshot.data.results);
            break;

          case ConnectionState.active:
            if (snapshot.data == null) {
              return Center(child: Text("Intenta mas tarde"));
            }
            return myFavoriteMovies(snapshot.data.results);
            break;
          default:
        }
      },
    );
  }

  Widget myFavoriteMovies(List<Result> myfavoriteMoviesList) {
    return GridView.builder(
        itemCount: myfavoriteMoviesList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 1),
        itemBuilder: (BuildContext context, int i) {
          final favorite = myfavoriteMoviesList[i];

          return Container(
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "${Config.imagePathURL}${favorite.posterPath}"),
                    fit: BoxFit.cover)),
          );
        });
  }
}
