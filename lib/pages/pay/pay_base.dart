import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:paycheck/constants/dimensions.dart';
import 'package:paycheck/constants/strings.dart';
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
  final darkModeStorage = GetStorage('themeStorage');

  @override
  Widget build(BuildContext context) {
    bool darkModeFromStorage =
        darkModeStorage.read('darkMode') ?? Get.isDarkMode;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            tooltip: deleteButtonTooltip,
            onPressed: () {
              setState(() {});
            },
            icon: Icon(
              Icons.restore_from_trash_rounded,
              size: iconSize,
              color: Get.theme.backgroundColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: rightPaddingFirstIcon),
            child: IconButton(
              tooltip: darkModeButtonTooltip,
              onPressed: () {
                setState(() {
                  darkModeFromStorage
                      ? Get.changeThemeMode(ThemeMode.light)
                      : Get.changeThemeMode(ThemeMode.dark);
                  darkModeFromStorage = !darkModeFromStorage;
                  darkModeStorage.write('darkMode', darkModeFromStorage);
                });
              },
              icon: darkModeFromStorage
                  ? Icon(
                      Icons.mood_sharp,
                      size: iconSize,
                      color: Get.theme.backgroundColor,
                    )
                  : Icon(
                      Icons.mood_bad_sharp,
                      size: iconSize,
                      color: Get.theme.backgroundColor,
                    ),
            ),
          ),
        ],
        title: Text(
          title,
          style: Get.theme.textTheme.bodyText1,
        ),
        backgroundColor: Get.theme.primaryColor,
      ),
      backgroundColor: Get.theme.backgroundColor,
      body: Row(
        children: [
          Expanded(
            flex: smallFlex,
            child: Container(),
          ),
          Expanded(
            flex: mainFlex,
            child: widget.payBody,
          ),
          Expanded(
            flex: smallFlex,
            child: Container(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: screenController.screenIdentifier,
        selectedItemColor: Get.theme.primaryColor,
        unselectedItemColor: Get.theme.shadowColor,
        backgroundColor: Get.theme.backgroundColor,
        selectedLabelStyle: Get.theme.textTheme.headline3,
        unselectedLabelStyle: Get.theme.textTheme.headline6,
        items: [
          BottomNavigationBarItem(
            tooltip: paymentListBottomButtonTooltip,
            icon: Icon(Icons.account_balance_wallet_rounded),
            label: paymentListBottomButtonLabel,
          ),
          BottomNavigationBarItem(
              tooltip: paymentRegisterBottomButtonTooltip,
              icon: Icon(Icons.add_chart),
              label: paymentRegisterBottomButtonLabel),
        ],
        onTap: screenController.onItemTapped,
      ),
      floatingActionButton: widget.payFloatingActionButton,
    );
  }
}
