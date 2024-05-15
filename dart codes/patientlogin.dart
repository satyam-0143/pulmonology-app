import 'package:flutter/material.dart';
import 'package:try1/navbarpatient.dart';
 // Import the PatientProfile page.

class Patient2 extends StatefulWidget {
  final String userId;

  const Patient2({Key? key, required this.userId}) : super(key: key);

  @override
  _Patient2State createState() => _Patient2State();
}

class _Patient2State extends State<Patient2> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Navbar(userId: widget.userId)
          ),
        );
      }
    });
  }




  // void _navigateToAllVideos(BuildContext context) async {
  //   await Navigator.push(context, MaterialPageRoute(builder: (context) => AllVideo(username: widget.username)));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(userId: widget.userId), // Pass `pid` to the Navbar.
      appBar: AppBar(
        title: Text(' ${widget.userId}'), // Displaying the username in the app bar.
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, semanticLabel: 'menu'),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 160,
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter, // Change the direction to top to bottom.
                  end: Alignment.bottomCenter,
                  colors: [Colors.cyan.shade800, Colors.grey.shade200],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow.
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SAVEETHA HOSPITAL',
                            style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Provide treatment with specialized health science and medical equipment.',
                            style: TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/hospital.png', // Replace 'hospital.png' with your image path.
                      height: 100, // Adjust the height of the image as needed.
                      width: 100, // Adjust the width of the image as needed.
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Exercise Videos',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                GestureDetector(

                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      'View All',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Replace with the actual number of videos.
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 320,
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    color: Colors.grey.shade300, // Placeholder color.
                    child: Center(
                      child: Text('Video ${index + 1}'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onVerticalDragUpdate: (details) {
                // Handle vertical drag update if needed.
              },
              child: Container(
                height: 160,
                width: 300,
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter, // Change the direction to top to bottom.
                    end: Alignment.bottomCenter,
                    colors: [Colors.cyan.shade800, Colors.grey.shade200],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // Changes position of shadow.
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ABOUT',
                                style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Home-based pulmonary rehabilitation helps patients avoid repeated hospital visits. With the app, patients can track their progress, contact doctors for live sessions, access video demonstrations of rehab exercises, and enhance their quality of life.',
                                style: TextStyle(fontSize: 15.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/hospital.png', // Replace 'hospital.png' with your image path.
                        height: 100, // Adjust the height of the image as needed.
                        width: 100, // Adjust the width of the image as needed.
                        fit: BoxFit.cover,
                      ),
                    ],
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
