import 'package:flutter/material.dart';

class MCI extends StatelessWidget {
  final String name;
  final String imgs;
  final String text;
  const MCI(
      {super.key, required this.name, required this.imgs, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                imgs,
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 17,
              ),
              Column(
                children: [
                  Text(name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  Text("Here is the link: http://zoom.com/abcdeefg",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
