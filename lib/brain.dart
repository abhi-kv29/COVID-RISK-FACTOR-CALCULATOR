import 'dart:math';

class Brain {
  Brain(
      {this.height,
      this.weight,
      this.diarrhea,
      this.nauseaVomiting,
      this.soreThroat,
      this.fatigue,
      this.temp,
      this.dryCough,
      this.tasteSmell,
      this.age});

  final int height;
  final int weight;
  final bool dryCough;
  final bool nauseaVomiting;
  final bool diarrhea;
  final bool fatigue;
  final bool tasteSmell;
  final double temp;
  final bool soreThroat;
  final int age;
  double _bmi;
  double _riskRate;
  int count = 0;

  String calculateRisk() {
    _bmi = weight / pow(height / 100, 2);
    if (_bmi > 30.0) {
      count++;
    }
    if (age >= 60) {
      count = count + 2;
    }
    if (soreThroat == true) {
      count = count + 1;
    }
    if (diarrhea == true) {
      count++;
    }
    if (temp > 100.4) {
      count = count + 2;
    }
    if (dryCough == true) {
      count = count + 2;
    }
    if (tasteSmell == true) {
      count = count + 2;
    }
    if (fatigue == true) {
      count++;
    }
    if (nauseaVomiting == true) {
      count++;
    }
    _riskRate = (count / 13) * 100;
    return _riskRate.toStringAsFixed(1);
  }

  String getResult() {
    if (_riskRate > 10.0 && _riskRate < 40.0) {
      return 'LOW';
    } else if (_riskRate > 40.0 && _riskRate < 70.0) {
      return 'MODERATE';
    } else if (_riskRate > 70.0) {
      return 'HIGH';
    } else {
      return 'INVALID VALUES';
    }
  }

  String getMessage() {
    if (_riskRate > 10.0 && _riskRate < 40.0) {
      return 'Your Covid-19 Risk Rate is Low, you can head out to work.';
    } else if (_riskRate > 40.0 && _riskRate < 70.0) {
      return 'Your Covid-19 Risk Rate is Medium, if possible avoid going out.';
    } else if (_riskRate > 70) {
      return 'Your Covid-19 Risk Rate is High, it is recommended to take a physical Covid Test';
    } else {
      return 'The values that you have entered are invalid, try again';
    }
  }
}
