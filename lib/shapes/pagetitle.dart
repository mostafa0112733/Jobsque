import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String name;

  const PageTitle({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        Spacer(),
        Text(name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            )),
        Spacer(),
      ],
    );
  }
}
