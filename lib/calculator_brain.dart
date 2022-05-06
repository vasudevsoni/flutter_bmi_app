import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 30) {
      return 'OBESE';
    } else if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi > 30) {
      return 'Tip: Exercise daily and reduce intake of fatty foods like sweets, shakes and donuts.';
    } else if (_bmi >= 25) {
      return 'Tip: Try to exercise more. Reduce intake of fatty foods like sweets, shakes and donuts.';
    } else if (_bmi > 18.5) {
      return 'Tip: Your BMI is perfect. Well done!';
    } else {
      return 'Tip: You should eat a bit more.';
    }
  }
}
