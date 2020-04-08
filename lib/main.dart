import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/ui/screens/searchmoviewscreen.dart';
import 'package:movies/User/bloc/userbloc.dart';
import 'package:movies/User/ui/navbaruser/navbaruser.dart';
import 'Movies/bloc/blocmovies.dart';
import 'Movies/ui/screens/screenreviewmovie.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
        providers: [
          BlocProvider<BlocMovies>(create: (context) => BlocMovies()),
          BlocProvider<UserBloc>(create: (context) => UserBloc())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: NavBarUser(),
          routes: <String, WidgetBuilder>{
            '/reviewmovies': (BuildContext context) => ScreenReviewMovie(),
            '/searchmovies': (BuildContext context) => ScreenSearchMovies()
          },
        ));
  }
}

