import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycheck/pages/pay/pay_list.dart';
import 'package:paycheck/pages/pay/pay_register.dart';

class Base extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PayCheck',
      home: PayList(),
      theme: ThemeData(
        primaryColor: Colors.grey[700],
        secondaryHeaderColor: Colors.grey[900],
        buttonColor: Colors.grey[700],
        backgroundColor: Colors.grey[400],
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.grey[900],
            fontFamily: 'Orbitron',
            fontSize: 42,
          ),
          bodyText2: TextStyle(
            color: Colors.grey[700],
            fontFamily: 'Orbitron',
            fontSize: 24,
          ),
          headline3: TextStyle(
            color: Colors.grey[700],
            fontFamily: 'Orbitron',
            fontSize: 16,
          ),
          headline6: TextStyle(
            color: Colors.grey[900],
            fontFamily: 'Orbitron',
            fontSize: 12,
            wordSpacing: 1,
            letterSpacing: 2,
          ),
          button: TextStyle(
            color: Colors.grey[900],
            fontFamily: 'Orbitron',
          ),
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.grey[800],
        secondaryHeaderColor: Colors.grey[300],
        buttonColor: Colors.grey[800],
        backgroundColor: Colors.grey[900],
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.grey[600],
            fontFamily: 'Orbitron',
            fontSize: 42,
          ),
          bodyText2: TextStyle(
            color: Colors.grey[400],
            fontFamily: 'Orbitron',
            fontSize: 24,
          ),
          headline3: TextStyle(
            color: Colors.grey[600],
            fontFamily: 'Orbitron',
            fontSize: 16,
          ),
          headline6: TextStyle(
            color: Colors.grey[400],
            fontFamily: 'Orbitron',
            fontSize: 12,
            wordSpacing: 1,
            letterSpacing: 2,
          ),
          button: TextStyle(
            color: Colors.grey[400],
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
