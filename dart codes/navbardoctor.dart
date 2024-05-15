import 'package:flutter/material.dart';
import 'package:try1/addpt.dart';
import 'package:try1/appointmentacceptance.dart';
import 'package:try1/doctorlogin.dart';
import 'package:try1/video.dart';
import 'package:try1/viewpt.dart';

class Navdoctor extends StatelessWidget {
  final String userId; // Define userId parameter

  Navdoctor({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height, // Match drawer height with screen height
        child: Drawer(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, // Align children to the full width of the drawer
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter, // Change the direction to top to bottom
                        end: Alignment.bottomCenter,
                        colors: [Colors.cyan.shade800, Colors.grey.shade100], // Gradient colors
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Align contents to the center horizontally
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 100.0), // Add padding to the right side of the CircleAvatar
                          child: CircleAvatar(
                            child: Icon(Icons.person, size: 150, color: Colors.black), // Adjust size here
                            backgroundColor: Colors.transparent,
                            radius: 40, // Adjust radius here
                          ),
                        ),
                        SizedBox(width: 10), // Add some space between the CircleAvatar and the right side of the drawer
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                  ListTile(
                    leading: Icon(Icons.person_add_alt_1),
                    title: Text('Add Patient'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPatient(userId: userId)));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.upload),
                    title: Text('Add Exercise Videos'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Uploadvideo(userId: userId)));
                    },
                  ),
                  ListTile(
                    leading:Icon(Icons.touch_app),
                    title: Text('Appointment Acceptance'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Appointment()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.person_search),
                    title: Text('View Patient'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ViewPatient()));
                    },
                  ),
                ],
              ),
            )
        )
    );
  }
}
