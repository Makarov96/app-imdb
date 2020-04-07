import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed; 
  CustomButton({Key key, this.onPressed}) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:30.0),
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          height: 55.0,
          width: 300.0,
          margin: EdgeInsets.only(top:50, bottom: 50),
          child: Text("Ver despues",style: 
          TextStyle(
            fontWeight: FontWeight.w500,
            color:Colors.white)),
          decoration: BoxDecoration(
            color:Colors.black,
            borderRadius: BorderRadius.circular(50)

          ),
        ),
        onTap: widget.onPressed,
        splashColor: Colors.white.withOpacity(0.5),
      ),
    );
  }
}