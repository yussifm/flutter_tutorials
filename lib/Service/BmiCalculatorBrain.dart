import 'dart:math';

class BmiCalBrain {
  BmiCalBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  double _bmi = 0.0;
  String calculateResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String resultText() {
    if (_bmi >= 25.0) {
      return "OverWeight";
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25.0) {
      return "You have a higher than normal body weight, try exercising more";
    } else if (_bmi > 18.5) {
      return 'You have a Normal body weight, Good job!';
    } else {
      return "You have a lower than normal body weight, try eating more";
    }
  }
}
