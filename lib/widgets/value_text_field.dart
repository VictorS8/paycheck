import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValueTextField extends StatefulWidget {
  final TextEditingController valueController;
  final Function onEditingComplete;

  ValueTextField(
      {@required this.valueController, @required this.onEditingComplete});

  @override
  _ValueTextFieldState createState() => _ValueTextFieldState();
}

class _ValueTextFieldState extends State<ValueTextField> {
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
      controller: widget.valueController,
      onEditingComplete: widget.onEditingComplete,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: 'Pay value',
          hintStyle: Get.theme
              .textTheme
              .bodyText2
              .apply(color: Colors.grey[100].withOpacity(0.1)),
          helperText: 'Example : 123.45',
          helperStyle: Get.theme.textTheme.headline6,
          focusColor: Get.theme.primaryColor,
          fillColor: Get.theme.secondaryHeaderColor,
          labelStyle: Get.theme.textTheme.headline6,
          hoverColor: Get.theme.primaryColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(64.0),
          )),
    );
  }
}
