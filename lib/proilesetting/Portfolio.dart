import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project/proilesetting/language.dart';
import 'package:project/shapes/pagetitle.dart';

class Portfolio extends StatefulWidget {
  final String token;
  const Portfolio({super.key, required this.token});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  Future<void> PostCv() async {
    final String urlApi =
        'https://project2.amit-learning.com/api/user/profile/portofolios';
    // ignore: unused_local_variable
    var response = await http.post(Uri.parse(urlApi),
        headers: {'Authorization': 'Bearer ${widget.token}'},
        body: jsonEncode({}));
    if (response.statusCode == 200) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Languge(
                    token: widget.token,
                  )));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Languge(
                    token: widget.token,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(30),
              child: ListView(
                children: [
                  Column(
                    children: [
                      PageTitle(
                        name: 'Portfolio',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 15,
                      ),
                      Row(
                        children: [
                          Text('Add portfolio here',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 152, 171, 225),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/document-upload.png',
                                height: MediaQuery.of(context).size.height / 8,
                                width: MediaQuery.of(context).size.width / 6,
                              ),
                              Text('Upload your other file',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text('Max. file size 10 MB',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 60,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: Color.fromARGB(
                                              255, 152, 171, 225),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.black,
                                                  width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              'assets/images/bezier.png'),
                                          Text("Add file",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ))
                                        ],
                                      )),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2.8,
                      ),
                      SizedBox(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            onPressed: PostCv,
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            child: Text(
                              'Save',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}
