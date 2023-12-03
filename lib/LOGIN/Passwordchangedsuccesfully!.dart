import 'package:flutter/material.dart';
import 'package:project/LOGIN/login.dart';
import 'package:project/shapes/endbutton2.dart';

class PasswordChangedsSuccesfully extends StatelessWidget {
  const PasswordChangedsSuccesfully({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(30),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/successful/shield-tick.png',
          ),SizedBox(height: 8,),
          Text(
            'Password Changeds \n Succesfully',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 15,),
          Text(
              "Your password has been changed successfully, we will let you know if there are more problems with your account",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              )),
          EndButton2(path: LogIn(), name: 'Open email app', color: Colors.blue,)

        ],
      )),
    )));
  }
}
