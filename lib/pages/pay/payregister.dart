import 'package:flutter/material.dart';
import 'package:paycheck/pages/pay/paybase.dart';

class PayRegister extends StatefulWidget {
  @override
  _PayRegisterState createState() => _PayRegisterState();
}

class _PayRegisterState extends State<PayRegister> {
  @override
  Widget build(BuildContext context) {
    return PayBase(
      payBody: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Changed',
              style: Theme.of(context).textTheme.headline3,
            )
          ],
        ),
      ),
      payFloatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonColor,
        child: Icon(
          Icons.add_circle_outline_rounded,
          size: 32,
          color: Theme.of(context).secondaryHeaderColor,
        ),
        onPressed: () => {},
      ),
    );
  }
}
