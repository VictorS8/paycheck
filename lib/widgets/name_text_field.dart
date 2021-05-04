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
          hintText: 'Payment name',
          hintStyle: Get.textTheme.bodyText2!
              .apply(color: Get.theme.primaryColor.withOpacity(0.4)),
          helperText: 'Example : nubankPayment',
          helperStyle: Get.textTheme.headline6,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(64.0),
          )),
    );
  }
}
