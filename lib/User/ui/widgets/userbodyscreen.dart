import 'dart:math';

import 'package:flutter/material.dart';

class UserBodyScreen extends StatefulWidget {
  UserBodyScreen({Key key}) : super(key: key);

  @override
  _UserBodyScreenState createState() => _UserBodyScreenState();
}

class _UserBodyScreenState extends State<UserBodyScreen> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child:
            CustomScrollView(physics: BouncingScrollPhysics(), slivers: <
                Widget>[
          SliverToBoxAdapter(
            child: SafeArea(
              child: Text(
                  "an unknown\namount of content\n goes here in the header"),
            ),
          ),
          SliverToBoxAdapter(
            child: TabBar(
              tabs: [
                Tab(child: Text('Days', style: TextStyle(color: Colors.black))),
                Tab(
                    child:
                        Text('Months', style: TextStyle(color: Colors.black))),
              ],
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              children: [
                ListView(
                  children: <Widget>[
                    ListTile(title: Text('Sunday 1')),
                    ListTile(title: Text('Monday 2')),
               
              
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ListTile(title: Text('January')),
                    ListTile(title: Text('February')),
            
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}

/*
NestedScrollView(
          // allows you to build a list of elements that would be scrolled away till the body reached the top
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  _randomHeightWidgets(context),
                ),
              ),
            ];
          },
          // You tab view goes here
          body: Column(
            children: <Widget>[
              TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.star, color: Colors.black,),),
                  Tab(icon: Icon(Icons.list, color: Colors.black,),),
               
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    GridView.count(
                      padding: EdgeInsets.zero,
                      crossAxisCount: 3,
                      children: Colors.primaries.map((color) {
                        return Container(color: color, height: 150.0);
                      }).toList(),
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      children: Colors.primaries.map((color) {
                        return Container(color: color, height: 150.0);
                      }).toList(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

 */
