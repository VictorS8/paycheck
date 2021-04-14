import 'package:flutter/material.dart';
import 'package:paycheck/pages/base.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(Base());
}
