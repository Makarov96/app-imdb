import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/bloc/blocmovies.dart';
import 'package:movies/User/model/mywatchlistmodel.dart';
import 'package:movies/Utils/config.dart';

class GridViewMyWatchList extends StatefulWidget {
  GridViewMyWatchList({Key key}) : super(key: key);

  @override
  _GridViewMyWatchListState createState() => _GridViewMyWatchListState();
}

class _GridViewMyWatchListState extends State<GridViewMyWatchList> {
  BlocMovies blocMovies;
  @override
  Widget build(BuildContext context) {
    blocMovies = BlocProvider.of(context);

    return FutureBuilder(
      future: blocMovies.getWatchlist(),
      builder: (BuildContext context, AsyncSnapshot<Watchlistmodel> snapshot) {
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
               break;
            }
            return mywatchlistMovies(snapshot.data.results);
            break;

          case ConnectionState.active:
            if (snapshot.data == null) {
              return Center(child: Text("Intenta mas tarde"));
               break;
            }
            return mywatchlistMovies(snapshot.data.results);
            break;
          default:
        }
      },
    );
  }

  Widget mywatchlistMovies(List<Result> watchlistdata) {
    return GridView.builder(
        itemCount: watchlistdata.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 1),
        itemBuilder: (BuildContext context, int i) {
          final watchlist = watchlistdata[i];

          return Container(
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "${Config.imagePathURL}${watchlist.posterPath}"),
                    fit: BoxFit.cover)),
          );
        });
  }
}
