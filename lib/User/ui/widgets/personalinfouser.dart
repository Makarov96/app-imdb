import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movies/User/model/usermodel.dart';

class PersonalInfoUser extends StatelessWidget {
  final UserModel userModel;
  PersonalInfoUser({Key key, this.userModel }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight =  MediaQuery.of(context).size.height;

    final profile_user = Container(
      margin: EdgeInsets.only(top: screenHeight*0.06),
      height: 90,
      width: 90,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2.0, color: Colors.white),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://www.nikonistas.com/digital/foro/uploads/monthly_2018_12/M_member_109975.png"))),
    );

    final name_user = Container(
        child: AutoSizeText("${userModel.username}", style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w500
        )),
    );

    return Container(
  
      child: Column(children: <Widget>[

        Center(child: profile_user),
        SizedBox(height: 15.0,),
        Center(child: name_user)
        ]),
    );
  }
}
