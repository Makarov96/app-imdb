import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/Movies/bloc/blocmovies.dart';
import 'package:movies/Movies/ui/screens/screenmovies.dart';

class NavBarUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NavBarUser();
  }
}

class _NavBarUser extends State<NavBarUser> {
  int indexTap = 0;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0, keepPage: true);

    void onTapTapped(int index) {
      setState(() {
        indexTap = index;
        controller.animateToPage(index,
            duration: Duration(milliseconds: 200), curve: Curves.ease);
      });
    }

    void pageChanged(int index) {
      setState(() {
        indexTap = index;
      });
    }

    final pageView = PageView(
      controller: controller,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        ScreenMovies(),
      ],
    );

    return MultiBlocProvider(
      child: Scaffold(
        body: pageView,
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.black),
          child: BottomNavigationBar(
            onTap: (index) {
              onTapTapped(index);
            },
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
              BottomNavigationBarItem(icon: Icon(Icons.person), title: Text(""))
            ],
          ),
        ),
      ),
      providers: [BlocProvider<BlocMovies>(create: (context) => BlocMovies())],
    );
  }
}
