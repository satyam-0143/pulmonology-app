import 'package:flutter/material.dart';
import 'package:try1/graph1.dart';
import 'package:try1/graph2.dart';
import 'package:try1/graph3.dart';
import 'package:try1/graph4.dart';
import 'package:try1/pulmonaryfunctiontest.dart';
import 'package:try1/sixminutewalk.dart';
import 'package:try1/stopbang.dart';

class Formdoc extends StatelessWidget {
  final String id;

  const Formdoc({
    required this.id,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Form',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 320, // Increased width for Button 1
              margin: EdgeInsets.only(bottom: 20), // Adjust spacing between buttons
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context) => Graph1(id: id)),
                  );
                },
                child: Text(
                  'STOP-BANG SLEEP APNEA QUESTIONNARIE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 320, // Increased width for Button 2
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Graph2(id: id)),
                  );
                },
                child: Text(
                  'EPSWORTH SLEEPINESS SCORE(ESS)',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 52,
              width: 320, // Increased width for Button 2
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Graph3(id: id)),
                  );
                },
                child: Text(
                  'MODIFIED MEDICAL RESEARCH COUNCIL DYSPNOEA SCALE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 320, // Increased width for Button 2
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => Graph4(id: id)),
                 );
                },
                child: Text(
                  'MODIFIED BORG DYSPNEA SCALE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 320, // Increased width for Button 2
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Sixminute(id: id)),
                  );
                },
                child: Text(
                  'SIX MINUTE WALK TEST WORKSHEET',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 320, // Increased width for Button 2
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Sixminutewalk(id: id)),
                  );
                },
                child: Text(
                  'PULMONARY FUNCTION TEST',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
