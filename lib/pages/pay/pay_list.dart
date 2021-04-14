import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycheck/pages/pay/pay_base.dart';

class PayList extends StatefulWidget {
  @override
  _PayListState createState() => _PayListState();
}

class _PayListState extends State<PayList> {
  List<int> listItems = [];

  @override
  Widget build(BuildContext context) {
    return PayBase(
      payBody: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Hello ${listItems[index]}',
              style: Get.theme.textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
      payFloatingActionButton: null,
    );
  }
}
