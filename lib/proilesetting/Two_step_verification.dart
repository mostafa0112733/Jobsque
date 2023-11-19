import 'package:flutter/material.dart';
import 'package:project/shapes/pagetitle.dart';
import 'package:project/shapes/switchbutton.dart';

class TwoStepeVrification extends StatelessWidget {
  final String token;

  const TwoStepeVrification({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageTitle(name: 'Two-step verification'),
              SwitchButton(
                  name: 'Secure your account with \n two-step verification'),
              Row(

                children: [
                  Image.asset('assets/images/successful/shield-tick.png') ,
                  Text(
                      "Two-step verification provides additional \n security by asking for a verification code \n every time you log in on another device.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/successful/shield-tick.png') ,

                  Text(
                      "Adding a phone number or using an \n authenticator will help keep your account \n safe from harm.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
