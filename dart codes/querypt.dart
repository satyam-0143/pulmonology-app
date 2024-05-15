import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:try1/response.dart';

class Query extends StatelessWidget {
  const Query({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigateToAnotherPage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Language()),
      );
    }

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
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.0, top: 70),
              child: ElevatedButton(
                onPressed: navigateToAnotherPage,
                child: Text(
                  'FILL THE FORM/படிவத்தை நிரப்புக',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                ),
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(right:150.0),
              child: Text(
                'First Time Score: 12\nSecond Time Score: 23',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height:80),
            Container(
              height: 300,
              padding: EdgeInsets.all(16),
              child: VerticalBarChart([
                ChartData('Pre', 12, charts.ColorUtil.fromDartColor(Colors.green)),
                ChartData('Post', 23, charts.ColorUtil.fromDartColor(Colors.yellow)),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}




class ChartData {
  final String category;
  final int value;
  final charts.Color color;

  ChartData(this.category, this.value, this.color);
}

class VerticalBarChart extends StatelessWidget {
  final List<ChartData> data;

  VerticalBarChart(this.data);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ChartData, String>> series = [
      charts.Series(
        id: 'ChartData',
        data: data,
        domainFn: (ChartData series, _) => series.category,
        measureFn: (ChartData series, _) => series.value,
        colorFn: (ChartData series, _) => series.color,
      )
    ];

    return charts.BarChart(
      series,
      animate: true,
      barGroupingType: charts.BarGroupingType.grouped,
      vertical: true,
      primaryMeasureAxis: charts.NumericAxisSpec(
        tickProviderSpec: charts.BasicNumericTickProviderSpec(
          desiredTickCount: 7,
        ),
      ),
      domainAxis: charts.OrdinalAxisSpec(
        renderSpec: charts.SmallTickRendererSpec(
          labelRotation: 45,
        ),
      ),
    );
  }
}
