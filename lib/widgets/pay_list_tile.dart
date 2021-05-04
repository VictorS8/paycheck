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
      elevation: 4.0,
      shadowColor: Get.theme.secondaryHeaderColor,
      color: Get.theme.primaryColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        dense: true,
        tileColor: Get.theme.primaryColor,
        selectedTileColor: Get.theme.backgroundColor,
        title: Text(listTileText,
            textAlign: TextAlign.center,
            style: Get.textTheme.headline3!
                .apply(color: Get.theme.backgroundColor, fontSizeFactor: 1.25)),
        subtitle: Text(listTileSubtitle,
            textAlign: TextAlign.center,
            style: Get.textTheme.headline3!
                .apply(color: Get.theme.backgroundColor, fontSizeDelta: 1.125)),
        onTap: () => Get.snackbar(
          'Check $listTileText',
          'Cost $listTileSubtitle',
          backgroundColor: Get.theme.primaryColor,
          colorText: Get.theme.backgroundColor,
          borderRadius: 16.0,
          isDismissible: true,
          duration: Duration(seconds: 5),
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 64.0),
        ),
        onLongPress: () {},
      ),
    );
  }
}
