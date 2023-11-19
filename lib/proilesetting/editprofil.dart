import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project/proilesetting/Portfolio.dart';
import 'package:project/shapes/elevatedButtonwithTitle.dart';
import 'package:project/shapes/endbutton.dart';
import 'package:project/shapes/pagetitle.dart';

class EditProfil extends StatefulWidget {
  final String token;
  const EditProfil({super.key, required this.token});

  @override
  State<EditProfil> createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  late final TextEditingController BioController;
  late final TextEditingController AddressController;
  late final TextEditingController MobileController;
  @override
  void initState() {
    super.initState();
    BioController = TextEditingController();
    AddressController = TextEditingController();
    MobileController = TextEditingController();
  }

  @override
  void dispose() {
    BioController.dispose();
    AddressController.dispose();
    MobileController.dispose();
    super.dispose();
  }

  Future<void> _ProfilData() async {
    final String urlApi =
        'https://project2.amit-learning.com/api/user/profile/edit';

    var response = await http.put(Uri.parse(urlApi),
        headers: {'Authorization': 'Bearer ${widget.token}'},
        body: jsonEncode({
          "bio": BioController.text,
          "address": AddressController.text,
          "mobile": MobileController.text,
        }));

    if (response.statusCode == 200) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Portfolio(
                    token: widget.token,
                  )));
    } else {
      print('faild');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  PageTitle(
                    name: 'Edit Profile',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundImage:
                                  AssetImage('assets/images/person.png'),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text("Change Photo",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    )))
                          ],
                        ),
                        TextFormFieldWithTitle(
                          name: 'Bio',
                          Controller: BioController, icon: null,
                        ),
                        TextFormFieldWithTitle(
                          name: 'Address',
                          Controller: AddressController, icon: null,
                        ),
                        TextFormFieldWithTitle(
                          name: 'Mobile',
                          Controller: MobileController, icon: null,
                        ),
                        EndButton(onPressed: _ProfilData, name: 'Save',color: Colors.blue,),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
