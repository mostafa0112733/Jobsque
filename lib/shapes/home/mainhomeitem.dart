import 'package:flutter/material.dart';
import 'package:project/shapes/home/rowsbutton.dart';

class MHI extends StatelessWidget {
  final String name;
  final String imgs;
  final String jobType;
  final String rbName;
  final String salary;
  final Widget path;

  const MHI({
    Key? key,
    required this.name,
    required this.imgs,
    required this.jobType,
    required this.rbName,
    required this.salary,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => path));
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white, // Change the button color as needed
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                'data:image/png;base64,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',
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 17,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    jobType,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              Spacer(),
              Image.asset(
                'assets/images/Icons/archive-minus.png',
                color: Colors.black,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              RB(btncolor: Color.fromARGB(255, 119, 186, 230), name: rbName),
              Spacer(),
              Text('${salary}K',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              Text("/Month",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
