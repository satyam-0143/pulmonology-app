import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:try1/patientinfoform.dart';
import 'navbardoctor.dart';
import 'doctorprofile.dart'; // Assuming this is the correct import for DoctorProfile

class CustomCardView extends StatefulWidget {
  final String userId;

  const CustomCardView({Key? key, required this.userId}) : super(key: key);

  @override
  _CustomCardViewState createState() => _CustomCardViewState();
}

class _CustomCardViewState extends State<CustomCardView> {
  late List<Map<String, String>> filteredPatients = [];
  late List<Map<String, String>> patients = [];

  @override
  void initState() {
    super.initState();
    _fetchPatients();
  }

  Future<void> _fetchPatients() async {
    try {
      final response = await http.get(Uri.parse('http://192.168.16.130:80/test/todayappo.php'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        setState(() {
          patients = jsonData.cast<Map<String, dynamic>>().map((json) {
            return {
              'pid': json['pid'].toString(),
              'name': json['name'].toString(),
              'date': json['date'].toString(),
              'P_phno': json['P_phno'].toString(),
              // Using the modified image URL
              'img': json['img'].toString(),
            };
          }).toList();
          filteredPatients = List.from(patients);
        });
      } else {
        throw Exception('Failed to load patients: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching patients: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Navdoctor(userId: widget.userId),
        appBar: AppBar(
          toolbarHeight: 90,
          title: Text('Dr.Gopal Krishna'),
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, semanticLabel: 'menu'),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DProfile(userId: widget.userId)),
                );
              },
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Patients Graph",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: VerticalBarChart(),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today's Appointment",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OtherPage()),
                      );
                    },
                    child: Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (var patient in filteredPatients)
                      _buildPatientCard(
                        id: patient['pid']!,
                        name: patient['name']!,
                        date: patient['date']!,
                        phno: patient['P_phno']!,
                        img: patient['img']!,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPatientCard({
    required String id,
    required String name,
    required String date,
    required String phno,
    required String img,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PatientInfo(id: id)));
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        elevation: 3,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildPatientDetail('ID', id),
                    _buildPatientDetail('Name', name),
                    _buildPatientDetail('Date', date ?? 'Date not available'),
                    _buildPatientDetail('Phno', phno),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 30,
                // Loading image from the modified URL
                backgroundImage: NetworkImage(img),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPatientDetail(String key, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$key: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}

class VerticalBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<MonthData> data = [
      MonthData("Jan", 5),
      MonthData("Feb", 7),
      MonthData("Mar", 4),
      MonthData("Apr", 9),
      MonthData("May", 2),
      MonthData("Jun", 6),
      MonthData("Jul", 8),
      MonthData("Aug", 10),
      MonthData("Sep", 1),
      MonthData("Oct", 3),
      MonthData("Nov", 9),
      MonthData("Dec", 7),
    ];

    List<charts.Series<MonthData, String>> series = [
      charts.Series(
        id: "Patients",
        data: data,
        domainFn: (MonthData data, _) => data.month,
        measureFn: (MonthData data, _) => data.value,
        colorFn: (MonthData data, _) {
          if (data.value <= 2) {
            return charts.MaterialPalette.green.shadeDefault;
          } else if (data.value <= 5) {
            return charts.MaterialPalette.teal.shadeDefault;
          } else if (data.value <= 6) {
            return charts.MaterialPalette.yellow.shadeDefault;
          } else {
            return charts.MaterialPalette.blue.shadeDefault;
          }
        },
        labelAccessorFn: (MonthData data, _) => '${data.value}',
      )
    ];

    return charts.BarChart(
      series,
      animate: true,
      vertical: true,
      primaryMeasureAxis: charts.NumericAxisSpec(
        renderSpec: charts.GridlineRendererSpec(
          labelStyle: charts.TextStyleSpec(
            color: charts.MaterialPalette.black,
          ),
          lineStyle: charts.LineStyleSpec(
            thickness: 0,
          ),
        ),
        tickProviderSpec: charts.BasicNumericTickProviderSpec(
          desiredTickCount: 12,
        ),
      ),
      domainAxis: charts.OrdinalAxisSpec(
        renderSpec: charts.SmallTickRendererSpec(
          labelStyle: charts.TextStyleSpec(
            color: charts.MaterialPalette.black,
          ),
          lineStyle: charts.LineStyleSpec(
            thickness: 0,
          ),
        ),
      ),
    );
  }
}

class MonthData {
  final String month;
  final int value;

  MonthData(this.month, this.value);
}













class OtherPage extends StatefulWidget {
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  late TextEditingController _searchController;
  late List<Map<String, String>> patients = [];
  late List<Map<String, String>> filteredPatients = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _fetchPatients();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    setState(() {
      filteredPatients = patients.where((patient) =>
      patient['name']!.toLowerCase().contains(_searchController.text.toLowerCase()) ||
          patient['pid']!.toLowerCase().contains(_searchController.text.toLowerCase()) ||
          patient['P_phno']!.toLowerCase().contains(_searchController.text.toLowerCase())).toList();
    });
  }

  Future<void> _fetchPatients() async {
    try {
      final response = await http.get(Uri.parse('http://192.168.16.130:80/test/todayappo.php'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        setState(() {
          patients = jsonData.cast<Map<String, dynamic>>().map((json) {
            return {
              'pid': json['pid'].toString(),
              'name': json['name'].toString(),
              'date': json['date'].toString(),
              'P_phno': json['P_phno'].toString(),
              // Using the modified image URL
              'img': json['img'].toString(),
            };
          }).toList();
          filteredPatients = List.from(patients);
        });
      } else {
        throw Exception('Failed to load patients: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching patients: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Patient Search',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (var patient in filteredPatients)
                      _buildPatientCard(
                        id: patient['pid']!,
                        name: patient['name']!,
                        date: patient['date']!,
                        phno: patient['P_phno']!,
                        img: patient['img']!,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPatientCard({
    required String id,
    required String name,
    required String date,
    required String phno,
    required String img,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>PatientInfo(id: id)));
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        elevation: 3,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildPatientDetail('ID', id),
                    _buildPatientDetail('Name', name),
                    _buildPatientDetail('Date', date ?? 'Date not available'),
                    _buildPatientDetail('Phno', phno),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 30,
                // Loading image from the modified URL
                backgroundImage: NetworkImage(img),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPatientDetail(String key, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$key: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
