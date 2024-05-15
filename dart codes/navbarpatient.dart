import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:try1/bookedslotpt.dart';
import 'appointmentpt.dart';
import 'querypt.dart';
import 'ptprofile.dart';

class Navbar extends StatelessWidget {
  final String userId;

  const Navbar({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Include the country code in the phone number
    String phoneNumber = "8903705958";

    void openWhatsApp() async {
      String phoneNumber = "8903705958";
      String url = "whatsapp://send?phone=$phoneNumber";

      try {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch WhatsApp.';
        }
      } catch (e) {
        print("Error launching WhatsApp: $e");
      }
    }


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
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(userId: userId)),);
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text('Appointment Booking'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Calenderview(userId: userId),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.question_mark),
                title: Text('Query Form'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Query()));
                },
              ),
              ListTile(
                leading: Icon(Icons.bookmark_border),
                title: Text('Booked Slots'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => bookedslot(userId: userId)));
                },
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Message to Your Doctor'),
                onTap: () async {
    String phoneNumber = "8903705958";
    String message = "Hello from my Flutter app!";
    String url = "whatsapp://send?phone=$phoneNumber&text=${Uri.encodeComponent(message)}";

    try {
    if (await canLaunch(url)) {
    await launch(url);
    } else {
    throw 'Could not launch WhatsApp';
    }
    } catch (e) {
    print("Error launching WhatsApp: $e");
    }
    },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
