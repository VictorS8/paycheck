import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycheck/constants/dimensions.dart';
import 'package:paycheck/constants/strings.dart';

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
      cursorRadius: Radius.circular(borderRadius),
      controller: widget.costController,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Get.theme.primaryColor, width: smallWidthBorder),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Get.theme.secondaryHeaderColor,
                width: mediumWidthBorder),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          alignLabelWithHint: true,
          hintText: hintCostText,
          hintStyle: Get.textTheme.bodyText2!.apply(
              color: Get.theme.primaryColor.withOpacity(opacityHintText)),
          helperText: helperCostText,
          helperStyle: Get.textTheme.headline6,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          )),
    );
  }
}
