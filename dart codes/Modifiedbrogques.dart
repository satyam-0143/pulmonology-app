import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:try1/graph4.dart';

class Modifiedbrog extends StatefulWidget {
  final String id;

  const Modifiedbrog({
    required this.id,
    Key? key,
  }) : super(key: key);

  @override
  State<Modifiedbrog> createState() => _ModifiedbrogState();
}

class _ModifiedbrogState extends State<Modifiedbrog> {
  int? _selectedOption;

  Future<void> _submitData() async {
    final url = 'http://192.168.16.130:80/test/pmbds.php';
    final response = await http.post(
      Uri.parse(url),
      body: {'P_id': widget.id}, // Sending 'P_id' instead of 'pid'
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      if (responseData['status'] == 'success') {
        final s1 = responseData['s1'];
        final s2 = responseData['s2'];
        print('s1: $s1, s2: $s2');
        // Handle the response data here, e.g., navigate to the next screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Graph4(id: widget.id)),
        );
      } else {
        print('Failure: ${responseData['message']}');
      }
    } else {
      print('Error: ${response.reasonPhrase}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Modified Medical Research Council Dyspnoea Scale',
          style: TextStyle(fontSize: 17),
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'How much difficulty is your breathing causing you right now?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // List of options
              _buildOptionTile(context, index: 0, text: '0 | Nothing at all'),
              _buildOptionTile(context, index: 1, text: '1 | Very, very slight'),
              _buildOptionTile(context, index: 2, text: '2 | Very slight'),
              _buildOptionTile(context, index: 3, text: '3 | Slight'),
              _buildOptionTile(context, index: 4, text: '4 | Moderate'),
              _buildOptionTile(context, index: 5, text: '5 | Somewhat severe'),
              _buildOptionTile(context, index: 6, text: '6 | Severe'),
              _buildOptionTile(context, index: 7, text: '7 | Very severe'),
              _buildOptionTile(context, index: 8, text: '8 | Very, very severe (almost maximal)'),
              _buildOptionTile(context, index: 9, text: '9 | Almost maximal'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SizedBox(
          width: double.infinity, // Make button stretch horizontally
          height: 40,
          child: ElevatedButton(
            onPressed: _selectedOption != null ? _submitData : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF66D0D0),
            ),
            child: const Text(
              'SUBMIT',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }

  // Function to create each option tile with visual feedback for selection
  Widget _buildOptionTile(BuildContext context, {required int index, required String text}) {
    return RadioListTile<int>(
      title: Text(text),
      value: index,
      groupValue: _selectedOption,
      onChanged: (int? newValue) {
        // Update the selected option when a RadioListTile is selected
        setState(() {
          _selectedOption = newValue;
        });
        print('Option ${index + 1} selected');
      },
      activeColor: Colors.blue, // Customize the radio button color
    );
  }
}
