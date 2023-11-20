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
                imgs,
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
