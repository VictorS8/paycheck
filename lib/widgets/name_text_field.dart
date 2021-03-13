import 'package:flutter/material.dart';

class NameTextField extends StatefulWidget {
  final TextEditingController nameController;

  NameTextField({@required this.nameController});

  @override
  _NameTextFieldState createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyText2,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.name,
      textCapitalization: TextCapitalization.sentences,
      cursorColor: Theme.of(context).primaryColor,
      cursorRadius: Radius.circular(64.0),
      controller: widget.nameController,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: 'Payment name',
          hintStyle: Theme.of(context)
              .textTheme
              .bodyText2
              .apply(color: Colors.grey[100].withOpacity(0.1)),
          helperText: 'Example : nubankPayment',
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
