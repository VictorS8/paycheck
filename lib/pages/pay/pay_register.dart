import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycheck/constants/dimensions.dart';
import 'package:paycheck/constants/strings.dart';
import 'package:paycheck/controllers/cost_controller.dart';
import 'package:paycheck/controllers/keys/keys_storage_controller.dart';
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
  KeysStorageController _keysStorageController = KeysStorageController();

  @override
  Widget build(BuildContext context) {
    void snackBarConfirmation(String title, String message) {
      Get.snackbar(
        title,
        message,
        backgroundColor: Get.theme.primaryColor,
        colorText: Get.theme.secondaryHeaderColor,
        borderRadius: borderRadius,
        isDismissible: true,
        duration: Duration(seconds: snackBarTime),
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.all(snackBarMediumMargin),
      );
    }

    return PayBase(
      payBody: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(borderRadius),
              child: Text(
                nameTextField,
                style:
                    Get.theme.textTheme.headline3!.apply(fontSizeFactor: 1.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(paddingTextField),
              child: NameTextField(
                nameController: _nameController.nameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(borderRadius),
              child: Text(
                costTextField,
                style:
                    Get.theme.textTheme.headline3!.apply(fontSizeFactor: 1.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(paddingTextField),
              child: CostTextField(
                costController: _costController.costController,
              ),
            ),
          ],
        ),
      ),
      payFloatingActionButton: FloatingActionButton(
        tooltip: floatingActionButtonTooltip,
        backgroundColor: Theme.of(context).buttonColor,
        child: Icon(
          Icons.add_circle_outline_rounded,
          size: iconSize,
          color: Get.theme.backgroundColor,
        ),
        onPressed: () => {
          _nameController.saveName(),
          _costController.saveValue(),
          if (_nameController.hasData() && _costController.hasData())
            {
              setState(() {
                _keysStorageController.writeKeyAndValue(
                    _nameController.showName, _costController.showCost);
              }),
              snackBarConfirmation(snackBarConfirmationText,
                  'Check ${_nameController.showName} with cost of ${_costController.showCost} was added!'),
            }
          else if (!_nameController.hasData() && !_costController.hasData())
            {
              snackBarConfirmation(snackBarMissingBothDataText,
                  snackBarMissingBothDataExplanationText),
            }
          else if (!_nameController.hasData())
            {
              snackBarConfirmation(
                  snackBarMissingNameText, snackBarMissingNameExplanationText),
            }
          else if (!_costController.hasData())
            {
              snackBarConfirmation(
                  snackBarMissingCostText, snackBarMissingCostExplanationText),
            }
          else
            {
              snackBarConfirmation(snackBarMissingSomeDataText,
                  snackBarMissingSomeDataExplanationText),
            }
        },
      ),
    );
  }
}
