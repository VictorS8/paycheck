import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paycheck/constants/dimensions.dart';
import 'package:paycheck/constants/strings.dart';

class NameTextField extends StatefulWidget {
  final TextEditingController nameController;

  NameTextField({required this.nameController});

  @override
  _NameTextFieldState createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Get.textTheme.bodyText2,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.name,
      textCapitalization: TextCapitalization.sentences,
      cursorColor: Get.theme.primaryColor,
      cursorRadius: Radius.circular(borderRadius),
      controller: widget.nameController,
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
          hintText: hintNameText,
          hintStyle: Get.textTheme.bodyText2!.apply(
              color: Get.theme.primaryColor.withOpacity(opacityHintText)),
          helperText: helperNameText,
          helperStyle: Get.textTheme.headline6,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          )),
    );
  }
}
