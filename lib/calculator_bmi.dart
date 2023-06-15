import 'dart:math';

enum BodyMassIndex { Overweight, Normal, Underweight, Unknown }

class CalculatorBMI {
  CalculatorBMI({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0;
  BodyMassIndex _bodyMassIndex = BodyMassIndex.Unknown;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBodyMassInterpretation() {
    var interpretation = '';

    switch (_bodyMassIndex) {
      case BodyMassIndex.Overweight:
        interpretation =
            'You\'re a little overweight. You should exercise more.';
        break;

      case BodyMassIndex.Normal:
        interpretation = 'You have a normal body weight. Good job!';
        break;

      case BodyMassIndex.Underweight:
        interpretation = 'You\'re a little underweight. You should eat more.';
        break;

      default:
        interpretation = 'Unknown';
        break;
    }

    return interpretation;
  }

  String getBmiResult() {
    if (_bmi >= 25) {
      _bodyMassIndex = BodyMassIndex.Overweight;
      return 'Overweight';
    } else if (_bmi > 18.5) {
      _bodyMassIndex = BodyMassIndex.Normal;
      return 'Normal';
    } else {
      _bodyMassIndex = BodyMassIndex.Underweight;
      return 'Underweight';
    }
  }
}
