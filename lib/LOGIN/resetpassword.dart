import 'package:flutter/material.dart';
import 'package:project/LOGIN/Passwordchangedsuccesfully!.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "J",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.search,
                  size: 14,
                ),
                Text(
                  'BSQUE',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            Text(
              'Reset Password',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Set your new password so you can login and acces Jobsque',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            Text("Password must be at least 8 characters",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            Text("Both password must match",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),

            ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> PasswordChangedsSuccesfully()));},
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                child: Text(
                  'Request password reset',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
