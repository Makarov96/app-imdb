import 'package:flutter/material.dart';

class HeaderReview extends StatelessWidget {
  HeaderReview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30),
        child: Container(
          margin: EdgeInsets.only(top:30),
          width: double.infinity,
          child: Row(
            children:<Widget>[
                Container(
                  child: IconButton(splashColor: Colors.blue,icon: Icon(Icons.arrow_back), onPressed: (){
                    Navigator.pop(context);
                  },
                  iconSize: 40,
                  color: Colors.white,
                  ),
                 
                )
            ]
          ),
        ),
      ),
    );
  }
}