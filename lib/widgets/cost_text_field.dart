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
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Get.theme.primaryColor, width: 1.0),
            borderRadius: BorderRadius.circular(64.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Get.theme.secondaryHeaderColor, width: 2.0),
            borderRadius: BorderRadius.circular(64.0),
          ),
          alignLabelWithHint: true,
          hintText: 'Payment cost',
          hintStyle: Get.textTheme.bodyText2!
              .apply(color: Get.theme.primaryColor.withOpacity(0.4)),
          helperText: 'Example : 123.45',
          helperStyle: Get.textTheme.headline6,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(64.0),
          )),
    );
  }
}
