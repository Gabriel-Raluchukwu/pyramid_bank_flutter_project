import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback function;
  final GlobalKey<FormState> formKey;

  FormButton(
      {@required this.formKey,
      @required this.buttonText,
      @required this.function})
      : assert(formKey != null),
        assert(buttonText != null),
        assert(function != null);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        side: BorderSide(),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          //TODO: Make Network call to authenticate and save JWT token in shared preferences
          //Show appropriate messages based on status of api call
          function();
          //modalPopUp(context);
        }
      },
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(buttonText),
      ),
    );
  }
}
