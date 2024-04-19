import 'package:flutter/material.dart';
import 'chart.dart';
import 'predictor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sales Forecasting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _predictor = Predictor();
  List<double>? _predictions;

  @override
  void initState() {
    super.initState();
    _predictModel();
  }

  Future<void> _predictModel() async {
    await _predictor.loadModel();
    // Mock inputData for demonstration purposes. Replace with your actual input data.
    final inputData = List<double>.filled(7, 0);
    final predictions = await _predictor.predict(inputData);
    setState(() {
      _predictions = predictions;
    });
  }

  @override
  void dispose() {
    _predictor.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sales Forecasting'),
      ),
      body: Center(
        child: _predictions == null
            ? CircularProgressIndicator()
            : SalesChart(_predictions!),
      ),
    );
  }
}
