import 'package:flutter/material.dart';

typedef ValidationFunctions(String value, String formtext);

class FormInputWidget extends StatelessWidget {
  final String hintText;
  final List<ValidationFunctions> callbackFunctions;
  final TextInputType keyboardType;
  final Function save;

  FormInputWidget(
      {@required this.hintText,
      @required this.callbackFunctions,
      @required this.save,
      this.keyboardType = TextInputType.text})
      : assert(save != null);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: hintText,
      ),
      validator: (value) {
        for (var validation in callbackFunctions) {
          String error = validation(value, hintText);
          if (error != null) {
            return error;
          }
        }
      },
      onSaved: (value) {
        save(value);
      },
    );
  }
}
