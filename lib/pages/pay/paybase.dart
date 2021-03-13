import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycheck/controllers/screencontroller.dart';

class PayBase extends StatefulWidget {
  final Widget payBody;
  final Widget payFloatingActionButton;

  PayBase({@required this.payBody, this.payFloatingActionButton});

  @override
  _PayBaseState createState() => _PayBaseState();
}

class _PayBaseState extends State<PayBase> {
  final ScreenController screenController = Get.put(ScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Pay Check',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: widget.payBody,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: screenController.screenIdentifier,
        selectedItemColor: Theme.of(context).secondaryHeaderColor,
        unselectedItemColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: "Check List"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_chart), label: "Add Pay"),
        ],
        onTap: screenController.onItemTapped,
      ),
      floatingActionButton: widget.payFloatingActionButton,
    );
  }
}
