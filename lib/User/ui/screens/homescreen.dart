import 'dart:math';
import 'package:flutter/material.dart';
import 'package:movies/User/ui/widgets/gridviewmyfavoritesmovies.dart';
import 'package:movies/User/ui/widgets/gridviewmywatchlist.dart';

import 'package:movies/User/ui/widgets/headeruser.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double get randHeight => Random().nextInt(100).toDouble();

  List<Widget> _randomChildren;

  // Children with random heights - You can build your widgets of unknown heights here
  // I'm just passing the context in case if any widgets built here needs  access to context based data like Theme or MediaQuery
  List<Widget> _randomHeightWidgets(BuildContext context) {
    _randomChildren ??= List.generate(3, (index) {
      final height = randHeight.clamp(
        50.0,
        MediaQuery.of(context)
            .size
            .width, // simply using MediaQuery to demonstrate usage of context
      );
      return Container(
        color: Colors.primaries[index],
        height: height,
        child: Text('Random Height Child ${index + 1}'),
      );
    });

    return _randomChildren;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Persistent AppBar that never scrolls
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Tu perfil', style: TextStyle(color: Colors.black),),
        elevation: 0.0,
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          // allows you to build a list of elements that would be scrolled away till the body reached the top
          headerSliverBuilder: (context, _) {
            return [
              SliverToBoxAdapter(child: SafeArea(child: HeaderUser())),
            ];
          },
          // You tab view goes here
          body: Column(
            children: <Widget>[
              TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.star, color: Colors.black),
                  ),
                  Tab(
                    icon: Icon(Icons.list, color: Colors.black),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                   //aca va el grid vie de la data
                   //-----------------------------
                   GridViewMyFavoritesMovies(),
                   GridViewMyWatchList()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

 SliverToBoxAdapter(
                    child: SafeArea(
                      child: HeaderUser(),
                    ),
                  ),
Stack(
        children:<Widget>[
          BackgroundGradient(height:screenHeight*0.4),
          HeaderUser(),
          Column(
            children:<Widget>[

            ]
          )
        ]
      ),
 */
