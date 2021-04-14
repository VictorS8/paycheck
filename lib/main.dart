import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paycheck/pages/base.dart';

void main() async {
  await GetStorage.init();
  runApp(Base());
}
