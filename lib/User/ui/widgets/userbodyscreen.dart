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
