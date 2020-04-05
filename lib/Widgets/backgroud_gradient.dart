import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  double height;
  double width;

  BackgroundGradient({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if (this.height == null) {
      this.height = screenHeight;
    }


    return Container(
      height: height,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient:LinearGradient(
          colors: [
            Color(0xFFB993D6),
            Color(0xFF8CA6DB),
          ],
          begin: Alignment.topCenter,
          end:  Alignment.bottomCenter
          ),
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(15), bottomRight:Radius.circular(15))
      ),
    );
  }
}
