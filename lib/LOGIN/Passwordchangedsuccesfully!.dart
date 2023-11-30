import 'package:flutter/material.dart';
import 'package:project/LOGIN/login.dart';

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
            'assets/images/directbox-receive.png',
          ),
          Text(
            'Password Changeds Succesfully',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
              "Your password has been changed successfully, we will let you know if there are more problems with your account",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              )),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            child: Text('Open email app',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )),
          )
        ],
      )),
    )));
  }
}
