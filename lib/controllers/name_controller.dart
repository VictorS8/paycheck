import 'package:flutter/material.dart';

class NameController {
  TextEditingController nameController = TextEditingController();
  String name = '';

  bool hasData() {
    if (showName == '')
      return false;
    else
      return true;
  }

  void saveName() {
    this.name = nameController.text;
  }

  String get showName => this.name;

  void clearName() {
    this.nameController.clear();
    this.name = '';
  }
}
