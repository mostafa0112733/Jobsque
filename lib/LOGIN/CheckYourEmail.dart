import 'package:flutter/material.dart';
import 'package:project/LOGIN/resetpassword.dart';
import 'package:project/shapes/endbutton2.dart';

class checkYourEmail extends StatelessWidget {
  const checkYourEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/directbox-receive.png',
          ),
          Text(
            'Check your Email',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'We have sent a reset password to your email address',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/2.9,),


          EndButton2(
            path: ResetPassword(),
            name: 'Open email app',
            color: Colors.blue,
          )
        ],
      ),
    )));
  }
}
