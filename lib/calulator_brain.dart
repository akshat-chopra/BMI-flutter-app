import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weigth;
  double _bmi;
  CalculatorBrain({this.height, this.weigth});

  String calculateBMI() {
    _bmi = weigth / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18)
      return 'Normal';
    else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Try to exercise more!!!!';
    } else if (_bmi > 18)
      return 'Good Job!!';
    else {
      return 'Eat more and Enjoy!!';
    }
  }
}
