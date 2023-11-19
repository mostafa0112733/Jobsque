import 'package:flutter/material.dart';
import 'package:project/shapes/MCI.dart';
import 'package:project/shapes/pagetitle.dart';

class HomeChat extends StatelessWidget {
  const HomeChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [PageTitle(name: 'Message'),
          MCI(name: 'twittwr', imgs: 'imgs', text: 'hellloo'),
          MCI(name: 'twittwr', imgs: 'imgs', text: 'hellloo'),
          MCI(name: 'twittwr', imgs: 'imgs', text: 'hellloo'),
          MCI(name: 'twittwr', imgs: 'imgs', text: 'hellloo'),
          MCI(name: 'twittwr', imgs: 'imgs', text: 'hellloo'),
          ],
        ),
      )),
    );
  }
}
