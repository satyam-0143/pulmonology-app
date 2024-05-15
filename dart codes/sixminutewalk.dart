import 'package:flutter/material.dart';
import 'package:try1/postrecordform.dart';
import 'package:try1/prerecordform.dart';
import 'package:try1/walktestform.dart';

class Sixminute extends StatelessWidget {
  final String id;

  const Sixminute({
    required this.id,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Form',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the buttons vertically
          children: [
            Padding(
              padding: const EdgeInsets.only( top: 70),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Walktestform()),);

                  },
                  child: Text(
                    'FILL THE FORM',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    minimumSize: Size(270, 50), // Increase the length and height of the button
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( top: 20),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Prerecordform()),
                    );                  },
                  child: Text(
                    'PRE RECORD',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    minimumSize: Size(270, 50), // Increase the length and height of the button
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( top: 20),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Postrecordform()),
                    );
                  },
                  child: Text(
                    'POST RECORD',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    minimumSize: Size(270, 50), // Increase the length and height of the button
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
