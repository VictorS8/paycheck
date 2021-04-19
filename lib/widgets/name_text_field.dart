import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      cursorRadius: Radius.circular(64.0),
      controller: widget.nameController,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: 'Payment name',
          hintStyle: Get.isDarkMode
              ? Get.textTheme.bodyText2!
                  .apply(color: Colors.grey[100]!.withOpacity(0.2))
              : Get.textTheme.bodyText2!
                  .apply(color: Colors.grey[700]!.withOpacity(0.2)),
          helperText: 'Example : nubankPayment',
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
