import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycheck/constants/dimensions.dart';

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
      elevation: elevation,
      shadowColor: Get.theme.secondaryHeaderColor,
      color: Get.theme.primaryColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ListTile(
        dense: true,
        tileColor: Get.theme.primaryColor,
        selectedTileColor: Get.theme.backgroundColor,
        title: Text(listTileText,
            textAlign: TextAlign.center,
            style: Get.textTheme.headline3!.apply(
                color: Get.theme.backgroundColor,
                fontSizeFactor: fontSizeFactor)),
        subtitle: Text(listTileSubtitle,
            textAlign: TextAlign.center,
            style: Get.textTheme.headline3!.apply(
                color: Get.theme.backgroundColor,
                fontSizeDelta: fontSizeDelta)),
        onTap: () => Get.snackbar(
          'Check $listTileText',
          'Cost $listTileSubtitle',
          backgroundColor: Get.theme.primaryColor,
          colorText: Get.theme.backgroundColor,
          borderRadius: borderRadius,
          isDismissible: true,
          duration: Duration(seconds: snackBarTime),
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.all(snackBarMediumMargin),
        ),
        onLongPress: () {},
      ),
    );
  }
}
