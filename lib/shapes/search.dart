import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        decoration:
            InputDecoration(icon: Icon(Icons.search), labelText: 'Search'),
      ),
    );
  }
}
