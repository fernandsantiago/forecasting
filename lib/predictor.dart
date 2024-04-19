// import 'package:tflite_flutter/tflite_flutter.dart';

// class Predictor {
//   late Interpreter _interpreter;

//   Future<void> loadModel() async {
//     _interpreter = await Interpreter.fromAsset('assets/my_lstm_model.tflite');
//   }

//   Future<List<double>> predict(List<double> inputData) async {
//     // Assuming inputData is a flat array of doubles, one for each input feature
//     final input = inputData.reshape([1, inputData.length]);
//     final output = List<double>.filled(7, 0).reshape([1, 7]);

//     _interpreter.run(input, output);

//     return output[0];
//   }

//   void close() {
//     _interpreter.close();
//   }
// }
