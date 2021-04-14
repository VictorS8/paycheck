import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycheck/controllers/cost_controller.dart';
import 'package:paycheck/controllers/name_controller.dart';
import 'package:paycheck/pages/pay/pay_base.dart';
import 'package:paycheck/widgets/cost_text_field.dart';
import 'package:paycheck/widgets/name_text_field.dart';

class PayRegister extends StatefulWidget {
  @override
  _PayRegisterState createState() => _PayRegisterState();
}

class _PayRegisterState extends State<PayRegister> {
  NameController _nameController = NameController();
  CostController _costController = CostController();

  @override
  Widget build(BuildContext context) {
    void snackBarConfirmation(String title, String message) {
      Get.snackbar(
        title,
        message,
        backgroundColor: Get.theme.primaryColor,
        colorText: Get.theme.secondaryHeaderColor,
        borderRadius: 16.0,
        isDismissible: true,
        duration: Duration(seconds: 5),
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 64.0),
      );
    }

    return PayBase(
      payBody: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Name:',
                style: Get.theme.textTheme.headline3,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              child: NameTextField(
                nameController: _nameController.nameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Cost:',
                style: Get.theme.textTheme.headline3,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              child: CostTextField(
                costController: _costController.costController,
              ),
            ),
          ],
        ),
      ),
      payFloatingActionButton: FloatingActionButton(
        tooltip: 'Add a PayCheck with name and cost',
        backgroundColor: Theme.of(context).buttonColor,
        child: Icon(
          Icons.add_circle_outline_rounded,
          size: 32,
          color: Get.theme.secondaryHeaderColor,
        ),
        onPressed: () => {
          _nameController.saveName(),
          _costController.saveValue(),
          if (_nameController.hasData() && _costController.hasData())
            {
              snackBarConfirmation('Registered your PayCheck',
                  'Check ${_nameController.showName} with cost of ${_costController.showCost} was added!'),
            }
          else if (!_nameController.hasData() && !_costController.hasData())
            {
              snackBarConfirmation('Both data are missing!',
                  'Insert some value on your PayCheck name and cost'),
            }
          else if (!_nameController.hasData())
            {
              snackBarConfirmation('Name your check!',
                  'The name of your check must be a cool name, so name it'),
            }
          else if (!_costController.hasData())
            {
              snackBarConfirmation('Choose your check cost!',
                  'The cost of your check must be a real number, zero is not a real cost'),
            }
          else
            {
              snackBarConfirmation('May be one of your data is missing!',
                  'Check your PayCheck name and value to see if anyone is missing'),
            }
        },
      ),
    );
  }
}
