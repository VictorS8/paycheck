import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycheck/constants/strings.dart';
import 'package:paycheck/controllers/keys/keys_storage_controller.dart';
import 'package:paycheck/pages/pay/pay_base.dart';
import 'package:paycheck/widgets/pay_list_tile.dart';

class PayList extends StatefulWidget {
  @override
  _PayListState createState() => _PayListState();
}

class _PayListState extends State<PayList> {
  late Map<String, double> mapItems;
  KeysStorageController _keysStorageController = KeysStorageController();

  @override
  void initState() {
    super.initState();
    mapItems = _keysStorageController.showKeysAndValues();
  }

  @override
  Widget build(BuildContext context) {
    return PayBase(
      payBody: mapItems.length == 0
          ? Center(
              child: Text(zeroPayList,
                  textAlign: TextAlign.center, style: Get.textTheme.headline3),
            )
          : ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: mapItems.length,
              itemBuilder: (context, index) {
                return PayListTile(
                  listTileText: '${mapItems.keys.toList()[index]}',
                  listTileSubtitle: '\$ : ${mapItems.values.toList()[index]}',
                );
              },
            ),
      payFloatingActionButton: null,
    );
  }
}
