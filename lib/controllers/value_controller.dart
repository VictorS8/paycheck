import 'package:flutter/material.dart';

class ValueController {
  TextEditingController valueController = TextEditingController();
  double value = 0.0;

  double verifyDouble() {
    double doubleValue = 0.0;
    String stringValue = '';
    try {
      stringValue = this.valueController.text;
      doubleValue = double.parse(stringValue);
    } on FormatException {
      try {
        doubleValue = double.parse(stringValue.replaceAll(',', '.'));
      } on FormatException {
        // TODO - Do something about UI
        print('Try something like a number, please');
      }
      return doubleValue;
    } catch (error) {
      // TODO - Do something about UI
      print('Some different error like $error');
    }
    return doubleValue;
  }

  void saveValue() {
    double verifiedValue = verifyDouble();
    if (verifiedValue == 0.0) {
      // TODO - Do something about UI
      print('Enter some value!');
    } else {
      this.value = verifiedValue;
    }
  }

  double get showValue => this.value;

  void clearValue() {
    this.valueController.clear();
    this.value = 0;
  }
}
