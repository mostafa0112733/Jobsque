import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/shapes/elevatedButtonwithTitle.dart';
import 'package:project/shapes/endbutton.dart';
import 'package:project/shapes/pagetitle.dart';
import 'package:http/http.dart' as http;

class Experience extends StatefulWidget {
  final String token;
  final int user_id;
  const Experience({super.key, required this.token, required this.user_id});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  late final TextEditingController ExperienceController;
  late final TextEditingController TypeOfWorksController;
  late final TextEditingController CompanyNameController;
  late final TextEditingController LocationController;

  DateTime? _selectedStartDate;
  DateTime? _selectedEndDate;

  @override
  void initState() {
    super.initState();
    ExperienceController = TextEditingController();
    TypeOfWorksController = TextEditingController();
    CompanyNameController = TextEditingController();
    LocationController = TextEditingController();
  }

  @override
  void dispose() {
    ExperienceController.dispose();
    TypeOfWorksController.dispose();
    CompanyNameController.dispose();
    LocationController.dispose();
    super.dispose();
  }

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedStartDate) {
      setState(() {
        _selectedStartDate = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedEndDate) {
      setState(() {
        _selectedEndDate = picked;
      });
    }
  }

  Future<void> _api() async {
    final String apiUrl = "https://project2.amit-learning.com/api/experince";

    var response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${widget.token}',
      },
      body: jsonEncode({
        'user_id': widget.user_id,
        'postion': ExperienceController.text,
        'type_work': TypeOfWorksController.text,
        'comp_name': CompanyNameController.text,
        'location': LocationController.text,
        'start': '22'
      }),
    );

    if (response.statusCode == 200) {
      print('Data posted successfully');
    } else {
      print('Failed to post data: ${response.statusCode}');
      print('Response body: ${response.body}');
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
              PageTitle(name: 'Experience'),
              TextFormFieldWithTitle(
                name: 'Position ',
                Controller: ExperienceController,
              ),
              TextFormFieldWithTitle(
                name: 'Type of work ',
                Controller: TypeOfWorksController,
              ),
              TextFormFieldWithTitle(
                name: 'Company name * ',
                Controller: CompanyNameController,
              ),
              TextFormFieldWithTitle(
                name: 'Location * ',
                Controller: LocationController,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Start Year',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () => _selectStartDate(context),
                  ),
                ),
                readOnly: true,
                controller: TextEditingController(
                  text: _selectedStartDate != null
                      ? DateFormat('yyyy-MM-dd').format(_selectedStartDate!)
                      : '',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'End Year',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () => _selectEndDate(context),
                  ),
                ),
                readOnly: true,
                controller: TextEditingController(
                  text: _selectedEndDate != null
                      ? DateFormat('yyyy-MM-dd').format(_selectedEndDate!)
                      : '',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              EndButton(onPressed: _api, name: 'save', color: Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}
