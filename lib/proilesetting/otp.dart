import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Otp extends StatefulWidget {
  final String token;
  const Otp({super.key, required this.token});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  String otp='';
  @override
  void initState() {
    super.initState();
    _loadOTP();
  }

  Future<void> _loadOTP() async {
    try {
      String generatedOTP = await generateOTP();
      setState(() {
        otp = generatedOTP;
      });
    } catch (e) {
      // Handle error
      print('Error: $e');
    }
  }

  Future<String> generateOTP() async {
    final String apiUrl = 'https://example.com/api/generate_otp'; // Replace with your API endpoint URL

    var response = await http.post(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      // Handle API error here
      throw Exception('Failed to generate OTP');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(padding: EdgeInsets.all(30))),
    );
  }
}
