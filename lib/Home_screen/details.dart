import 'package:flutter/material.dart';
import 'package:project/applyjob/applyjobone.dart';
import 'package:project/shapes/home/rowsbutton.dart';
import 'package:project/shapes/pagetitle.dart';

class Details extends StatefulWidget {
  final String name;
  final String jobType;
  final String imgs;
  final String dec;
  final String skill;
  final String about;
  final String job_time_type;
  final String email;
  final String token;
  final String website;
  final String jobId;
  final String username;

  const Details(
      {super.key,
      required this.about,
      required this.dec,
      required this.imgs,
      required this.jobType,
      required this.name,
      required this.skill,
      required this.email,
      required this.token,
      required this.website,
      required this.jobId,
      required this.username,
      required this.job_time_type});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(children: [
            PageTitle(
              name: 'Job Detail',
            ),
            SizedBox(
              height: 20,
            ),
            // the TiTles
            Center(
              child: Column(children: [
                Image.network(
                  widget.imgs,
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.jobType,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RB(
                        btncolor: Color.fromARGB(255, 119, 186, 230),
                        name: widget.job_time_type),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            // the tabs
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.black54,
              indicator: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              controller: tabController,
              isScrollable: false,
              tabs: [
                Tab(
                  child: Text("Description",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Tab(
                  child: Text("Company",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Tab(
                  child: Text("People",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            // the tabs Bar views
            SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  child: TabBarView(controller: tabController, children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Job Description",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            )),
                        Text(widget.dec,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Contact Us",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width / 2.5,
                              height: 90,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black87),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Email",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Text(widget.email,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width / 2.5,
                              height: 90,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black87),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Website",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Text(widget.website,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("About Company",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(widget.about,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    Container(
                      color: Colors.white70,
                    ),
                  ]),
                )),
            // Endbutton
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApplyJobOne(
                                token: widget.token,
                                jobId: widget.jobId,
                                username: widget.username,
                              )));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                child: Text(
                  'Apply Now',
                  style: TextStyle(fontSize: 26),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
