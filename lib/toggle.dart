import 'package:flutter/material.dart';
import 'package:project/Home_screen/first.dart';
import 'package:project/appledjob/appledjob.dart';

import 'package:project/proilesetting/profill.dart';

class Togglebutton extends StatefulWidget {
  final String token;
final int user_id;
  final String user;
  const Togglebutton({super.key, required this.token, required this.user,required this.user_id});

  @override
  State<Togglebutton> createState() => _TogglebuttonState();
}

class _TogglebuttonState extends State<Togglebutton> {
  int _selectedIndex = 0;
  late final String token;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: [
                HomeScreen(
                  userName: widget.user,
                  token: widget.token,
                ),
                Profil(
                  token: widget.token,
                ),
                AppledJob()
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToggleButtons(
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                    ),
                    Icon(Icons.message),
                    Icon(Icons.badge),
                    Icon(Icons.message),
                    Icon(Icons.person),
                  ],
                  isSelected: [
                    _selectedIndex == 0,
                    _selectedIndex == 1,
                    _selectedIndex == 2,
                    _selectedIndex == 3,
                    _selectedIndex == 4,
                  ],
                  onPressed: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
