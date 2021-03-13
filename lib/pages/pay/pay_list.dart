import 'package:flutter/material.dart';
import 'package:paycheck/pages/pay/pay_base.dart';

class PayList extends StatefulWidget {
  @override
  _PayListState createState() => _PayListState();
}

class _PayListState extends State<PayList> {
  List<int> items = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return PayBase(
      payBody: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Hello ${items[index]}',
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }
}
