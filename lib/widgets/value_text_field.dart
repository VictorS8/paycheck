import 'package:flutter/material.dart';

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
      style: Theme.of(context).textTheme.bodyText2,
      textAlign: TextAlign.center,
      keyboardType:
          TextInputType.numberWithOptions(signed: false, decimal: true),
      textCapitalization: TextCapitalization.sentences,
      cursorColor: Theme.of(context).primaryColor,
      cursorRadius: Radius.circular(64.0),
      controller: widget.valueController,
      onEditingComplete: widget.onEditingComplete,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: 'Pay value',
          hintStyle: Theme.of(context)
              .textTheme
              .bodyText2
              .apply(color: Colors.grey[100].withOpacity(0.1)),
          helperText: 'Example : 123.45',
          helperStyle: Theme.of(context).textTheme.headline6,
          focusColor: Theme.of(context).primaryColor,
          fillColor: Theme.of(context).secondaryHeaderColor,
          labelStyle: Theme.of(context).textTheme.headline6,
          hoverColor: Theme.of(context).primaryColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(64.0),
          )),
    );
  }
}
