import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycheck/pages/pay/paylist.dart';
import 'package:paycheck/pages/pay/payregister.dart';

class Base extends StatelessWidget {
  final List<Shadow> shadowTextLight = [
    Shadow(blurRadius: 15, color: Colors.grey[400]),
    Shadow(blurRadius: 15, color: Colors.grey[800]),
  ];

  final List<Shadow> shadowTextDark = [
    Shadow(blurRadius: 5, color: Colors.grey[800]),
    Shadow(blurRadius: 5, color: Colors.grey[400]),
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PayCheck',
      home: PayList(),
      theme: ThemeData(
        primaryColor: Colors.grey[900],
        secondaryHeaderColor: Colors.grey[300],
        buttonColor: Colors.white,
        backgroundColor: Colors.grey[400],
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Bungee',
            color: Colors.grey[900],
            fontSize: 42,
          ),
          bodyText2: TextStyle(
            fontFamily: 'Bungee',
            color: Colors.grey[100],
            fontSize: 42,
          ),
          headline3: TextStyle(
              color: Colors.white, fontFamily: 'Bungee', fontSize: 24),
          headline6: TextStyle(
              color: Colors.white,
              fontSize: 42,
              shadows: shadowTextLight,
              wordSpacing: 1,
              letterSpacing: 2,
              fontFamily: 'Bungee'),
          button: TextStyle(color: Colors.grey[400], fontFamily: 'Bungee'),
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.grey[800],
        secondaryHeaderColor: Colors.grey[300],
        buttonColor: Colors.grey[800],
        backgroundColor: Colors.grey[900],
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Bungee',
            color: Colors.grey[600],
            fontSize: 42,
          ),
          bodyText2: TextStyle(
            fontFamily: 'Bungee',
            color: Colors.grey[400],
            fontSize: 42,
          ),
          headline3: TextStyle(
              color: Colors.grey[600], fontFamily: 'Bungee', fontSize: 24),
          headline6: TextStyle(
            color: Colors.grey[400],
            fontSize: 42,
            shadows: shadowTextDark,
            wordSpacing: 1,
            letterSpacing: 2,
            fontFamily: 'Bungee',
          ),
          button: TextStyle(color: Colors.grey[400], fontFamily: 'Bungee'),
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
