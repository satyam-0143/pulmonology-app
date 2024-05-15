import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:try1/patientlogin.dart';

class Request extends StatelessWidget {
  final String userId;
  final String selectedDate;

  const Request({Key? key, required this.userId, required this.selectedDate}) : super(key: key);

  Future<void> sendData(BuildContext context, String pid, String name) async {
    // Convert the selectedDate string to a DateTime object
    DateTime dateTime = DateTime.parse(selectedDate);

    // Format the date as a string in the 'yyyy-MM-dd' format
    String dateString = "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";

    final response = await http.post(
      Uri.parse('http://192.168.16.130:80/test/bokking.php'),
      body: {
        'pid': pid,
        'name': name,
        'date': dateString,
      },
    );

    if (response.statusCode == 200) {
      // Handle success (navigate to next page or show a success message)
      Navigator.push(context, MaterialPageRoute(builder: (context) => Patient2(userId: userId)));
    } else {
      // Handle error (show an error message)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to submit data')),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    // Define variables to store user input
    // String pid = '';
    String name = '';
    // String date = ''; // This should be obtained from the selected date

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Request Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white, // Set the font color to white
          ),
        ),
        centerTitle: true, // Center the title horizontally
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan.shade300, Colors.white], // Define your gradient colors
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 1.0], // Adjust the position of colors
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'PID',
                border: OutlineInputBorder(),
              ),
              readOnly: true, // Make the field read-only
              controller: TextEditingController(text: userId),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // Update the Name variable when the user types in the text field
                name = value;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Call the function to send data with user input and the selected date
                sendData(context, userId, name);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF66D0D0),
              ),
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
