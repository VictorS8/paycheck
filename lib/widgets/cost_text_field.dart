import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CostTextField extends StatefulWidget {
  final TextEditingController costController;

  CostTextField({required this.costController});

  @override
  _CostTextFieldState createState() => _CostTextFieldState();
}

class _CostTextFieldState extends State<CostTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Get.theme.textTheme.bodyText2,
      textAlign: TextAlign.center,
      keyboardType:
          TextInputType.numberWithOptions(signed: false, decimal: true),
      textCapitalization: TextCapitalization.sentences,
      cursorColor: Get.theme.primaryColor,
      cursorRadius: Radius.circular(64.0),
      controller: widget.costController,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: 'Payment cost',
          hintStyle: Get.isDarkMode
              ? Get.textTheme.bodyText2!
              .apply(color: Colors.grey[100]!.withOpacity(0.2))
              : Get.textTheme.bodyText2!
              .apply(color: Colors.grey[700]!.withOpacity(0.2)),
          helperText: 'Example : 123.45',
          helperStyle: Get.textTheme.headline6,
          focusColor: Get.theme.primaryColor,
          fillColor: Get.theme.secondaryHeaderColor,
          labelStyle: Get.textTheme.headline6,
          hoverColor: Get.theme.primaryColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(64.0),
          )),
    );
  }
}
