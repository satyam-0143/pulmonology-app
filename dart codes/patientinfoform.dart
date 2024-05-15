import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'formdoc.dart';

class PatientInfo extends StatefulWidget {
  final String id;

  const PatientInfo({
    required this.id,
    Key? key,
  }) : super(key: key);

  @override
  _PatientInfoState createState() => _PatientInfoState();
}

class _PatientInfoState extends State<PatientInfo> {
  String name = '';
  String age = '';
  String gender = '';
  String cause = '';

  @override
  void initState() {
    super.initState();
    fetchPatientInfo();
  }

  Future<void> fetchPatientInfo() async {
    final url = Uri.parse('http://192.168.16.130:80/test/printPatientInfo.php');
    final response = await http.post(
      url,
      body: {'P_id': widget.id},
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      setState(() {
        name = jsonData[0]['P_name'];
        age = jsonData[0]['P_age'];
        gender = jsonData[0]['P_gender'];
        cause = jsonData[0]['cause'];
      });
    } else {
      print('Failed to fetch patient info');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'View Patient',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan.shade300, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 1.0],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextFieldRow('PID        :', widget.id),
            SizedBox(height: 20),
            _buildTextFieldRow('Name    :', name),
            SizedBox(height: 20),
            _buildTextFieldRow('Age        :', age),
            SizedBox(height: 20),
            _buildTextFieldRow('Gender   :', gender),
            SizedBox(height: 20),
            _buildTextFieldRow('Cause    :', cause),
            SizedBox(height: 45),
            Container(
              height: 50,
              width: 100,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: TextButton(
                onPressed: () {
                  // Navigate to Formdoc page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Formdoc(id: widget.id)),
                  );
                },
                child: Text(
                  'Form',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SizedBox(
          width: double.infinity,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              // Perform save operation here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF66D0D0),
            ),
            child: Text(
              'Save',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 30),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              value,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
