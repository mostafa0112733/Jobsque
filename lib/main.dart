import 'package:flutter/material.dart';
import 'package:project/onboadrdin/SplachScreen.dart';
import 'package:project/provider/userprovider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(   ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
