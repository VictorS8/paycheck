import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycheck/controllers/screen_controller.dart';

class PayBase extends StatefulWidget {
  final Widget payBody;
  final Widget? payFloatingActionButton;

  PayBase({required this.payBody, this.payFloatingActionButton});

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
          style: Get.theme!.textTheme.bodyText1,
        ),
        backgroundColor: Get.theme!.primaryColor,
      ),
      backgroundColor: Get.theme!.backgroundColor,
      body: widget.payBody,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: screenController.screenIdentifier,
        selectedItemColor: Get.theme!.secondaryHeaderColor,
        unselectedItemColor: Get.theme!.primaryColor,
        backgroundColor: Get.theme!.backgroundColor,
        selectedLabelStyle: Get.theme!.textTheme.headline3,
        unselectedLabelStyle: Get.theme!.textTheme.headline6,
        items: [
          BottomNavigationBarItem(
              tooltip: "Check list of payments",
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: "Check List"),
          BottomNavigationBarItem(
              tooltip: "Add a payment to the list",
              icon: Icon(Icons.add_chart),
              label: "Add Pay"),
        ],
        onTap: screenController.onItemTapped,
      ),
      floatingActionButton: widget.payFloatingActionButton,
    );
  }
}
