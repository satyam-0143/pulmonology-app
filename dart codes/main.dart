import 'package:flutter/material.dart';
import 'page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: hello(),
      ),
    );
  }
}

class hello extends StatefulWidget {
  @override
  _helloState createState() => _helloState();
}

class _helloState extends State<hello> {
  @override
  void initState() {
    super.initState();
    // Delayed navigation to next screen after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      // Make sure context is correctly used here
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Page2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
            ),
            // Update image path as needed
            Image.asset(
              'assets/doctor.png',
              width: 400,
              height: 600,
            ),
          ],
        ),
      ),
    );
  }
}
