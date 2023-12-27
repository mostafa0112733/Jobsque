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
                  children: [
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 4,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 139, 187, 226),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Image.asset(
                    'assets/images/directbox-receive.png',
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
          Text(
            'Check your Email',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
              SizedBox(
                height: 10,
              ),
          Text(
            'We have sent a reset password to your email address',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 3.5,
              ),


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
