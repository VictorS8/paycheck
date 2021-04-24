import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PayListTile extends StatelessWidget {
  final String listTileText;
  final String listTileSubtitle;

  PayListTile({
    required this.listTileText,
    required this.listTileSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      shadowColor: Get.theme.secondaryHeaderColor,
      color: Get.theme.primaryColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: ListTile(
        dense: true,
        tileColor: Get.theme.secondaryHeaderColor,
        enableFeedback: true,
        selectedTileColor: Get.theme.backgroundColor,
        title: Text(
          listTileText,
          style: Get.textTheme.headline3,
          textAlign: TextAlign.center,
        ),
        subtitle: Text(
          listTileSubtitle,
          style: Get.textTheme.headline3,
          textAlign: TextAlign.center,
        ),
        onTap: () => Get.snackbar(
          'Just',
          'Tapped',
          backgroundColor: Get.theme.primaryColor,
          colorText: Get.theme.secondaryHeaderColor,
          borderRadius: 16.0,
          isDismissible: true,
          duration: Duration(seconds: 5),
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 64.0),
        ),
        onLongPress: () => Get.snackbar(
          'Long',
          'Press',
          backgroundColor: Get.theme.primaryColor,
          colorText: Get.theme.secondaryHeaderColor,
          borderRadius: 16.0,
          isDismissible: true,
          duration: Duration(seconds: 5),
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 64.0),
        ),
      ),
    );
  }
}
