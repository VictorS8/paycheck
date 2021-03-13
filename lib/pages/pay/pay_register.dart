import 'package:flutter/material.dart';
import 'package:paycheck/pages/pay/pay_base.dart';
import 'package:paycheck/widgets/name_text_field.dart';

class PayRegister extends StatefulWidget {
  @override
  _PayRegisterState createState() => _PayRegisterState();
}

class _PayRegisterState extends State<PayRegister> {
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PayBase(
      payBody: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name:',
              style: Theme.of(context).textTheme.headline3,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              child: NameTextField(
                nameController: _nameController,
              ),
            ),
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
