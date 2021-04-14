import 'package:flutter/material.dart';

class CostController {
  TextEditingController costController = TextEditingController();
  double cost = 0.0;

  bool hasData() {
    if (showCost == 0.0)
      return false;
    else
      return true;
  }

  double verifyDouble() {
    double doubleCost = 0.0;
    String stringCost = '';
    try {
      stringCost = this.costController.text;
      doubleCost = double.parse(stringCost);
    } on FormatException {
      try {
        doubleCost = double.parse(stringCost.replaceAll(',', '.'));
      } on FormatException {
        // TODO - Do something about UI
        print('Try something like a number, please');
      }
      return doubleCost;
    } catch (error) {
      // TODO - Do something about UI
      print('Some different error like $error');
    }
    return doubleCost;
  }

  void saveValue() {
    double verifiedValue = verifyDouble();
    this.cost = verifiedValue;
  }

  double get showCost => this.cost;

  void clearValue() {
    this.costController.clear();
    this.cost = 0;
  }
}
