import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paycheck/pages/pay/pay_list.dart';
import 'package:paycheck/pages/pay/pay_register.dart';

class Base extends StatelessWidget {
  final darkModeStorage = GetStorage('themeStorage');

  @override
  Widget build(BuildContext context) {
    final bool darkMode = darkModeStorage.read('darkMode') ?? true;

    return GetMaterialApp(
      title: 'PayCheck',
      home: PayList(),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        primaryColor: Colors.purple[900],
        secondaryHeaderColor: Colors.grey[900],
        buttonColor: Colors.purple[900],
        backgroundColor: Colors.grey[400],
        shadowColor: Colors.grey[900],
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Get.theme.shadowColor,
          ),
          textStyle:
              Get.textTheme.headline6!.apply(color: Get.theme.backgroundColor),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.grey[400],
            fontFamily: 'Orbitron',
            fontSize: 32,
          ),
          bodyText2: TextStyle(
            color: Colors.purple[900],
            fontFamily: 'Orbitron',
            fontSize: 16,
          ),
          headline3: TextStyle(
            color: Colors.purple[900],
            fontFamily: 'Orbitron',
            fontSize: 12,
          ),
          headline6: TextStyle(
            color: Colors.purple[900],
            fontFamily: 'Orbitron',
            fontSize: 8,
            wordSpacing: 1,
            letterSpacing: 2,
          ),
          button: TextStyle(
            color: Colors.grey[400],
            fontFamily: 'Orbitron',
          ),
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.grey[400],
        secondaryHeaderColor: Colors.purple[800],
        buttonColor: Colors.grey[400],
        backgroundColor: Colors.grey[900],
        shadowColor: Colors.grey[700],
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Get.theme.shadowColor,
          ),
          textStyle:
              Get.textTheme.headline6!.apply(color: Get.theme.backgroundColor),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.grey[900],
            fontFamily: 'Orbitron',
            fontSize: 32,
          ),
          bodyText2: TextStyle(
            color: Colors.grey[400],
            fontFamily: 'Orbitron',
            fontSize: 16,
          ),
          headline3: TextStyle(
            color: Colors.grey[400],
            fontFamily: 'Orbitron',
            fontSize: 12,
          ),
          headline6: TextStyle(
            color: Colors.grey[400],
            fontFamily: 'Orbitron',
            fontSize: 8,
            wordSpacing: 1,
            letterSpacing: 2,
          ),
          button: TextStyle(
            color: Colors.grey[900],
            fontFamily: 'Orbitron',
          ),
        ),
      ),
      getPages: [
        GetPage(name: '/', page: () => Base()),
        GetPage(name: '/paylist', page: () => PayList()),
        GetPage(name: '/payregister', page: () => PayRegister())
      ],
    );
  }
}
