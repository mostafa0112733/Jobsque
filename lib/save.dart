import 'package:flutter/material.dart';
import 'package:project/onboarding.dart';
import 'package:project/shapes/home/mainhomeitem.dart';

class Saved extends StatefulWidget {
  final String name;
  final String imgs;
  final String jobType;
  final String rbName;
  final String salary;

  const Saved({
    Key? key,
    required this.name,
    required this.imgs,
    required this.jobType,
    required this.rbName,
    required this.salary,
  }) : super(key: key);

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              if (widget.name.isEmpty)
                Text('hello')
              else
              MHI(name: widget.name, imgs: widget.imgs, jobType: widget.jobType, rbName: widget.rbName, salary: widget.salary, path: OnBoarding())
            ],
          ),
        ),
      ),
    );
  }
}
