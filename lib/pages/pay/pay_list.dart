import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycheck/pages/pay/pay_base.dart';
import 'package:paycheck/widgets/pay_list_tile.dart';

class PayList extends StatefulWidget {
  @override
  _PayListState createState() => _PayListState();
}

class _PayListState extends State<PayList> {
  Map<String, double> mapItems = {
    'Hello': 231,
    'Now': 21.34,
    'Now and then': 1090.23
  };

  @override
  Widget build(BuildContext context) {
    return PayBase(
      payBody: mapItems.length == 0
          ? Center(
              child: Text(
                'No pay checks on list',
                style: Get.theme.textTheme.headline3,
                textAlign: TextAlign.center,
              ),
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
