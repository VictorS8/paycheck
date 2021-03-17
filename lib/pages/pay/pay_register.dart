import 'package:flutter/material.dart';
import 'package:paycheck/controllers/name_controller.dart';
import 'package:paycheck/controllers/value_controller.dart';
import 'package:paycheck/pages/pay/pay_base.dart';
import 'package:paycheck/widgets/name_text_field.dart';
import 'package:paycheck/widgets/value_text_field.dart';

class PayRegister extends StatefulWidget {
  @override
  _PayRegisterState createState() => _PayRegisterState();
}

class _PayRegisterState extends State<PayRegister> {
  NameController _nameController = NameController();
  ValueController _valueController = ValueController();

  @override
  Widget build(BuildContext context) {
    return PayBase(
      payBody: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Name:',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              child: NameTextField(
                nameController: _nameController.nameController,
                onEditingComplete: _nameController.saveName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Value:',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              child: ValueTextField(
                valueController: _valueController.valueController,
                onEditingComplete: _nameController.saveName,
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
        onPressed: () => {
          _nameController.saveName(),
          _valueController.saveValue(),
          print(
              'Saved tap ${_nameController.showName} and ${_nameController.showName.runtimeType}'),
          print(
              'Saved tap ${_valueController.showValue} and ${_valueController.showValue.runtimeType}')
        },
      ),
    );
  }
}
