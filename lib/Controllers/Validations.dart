import 'package:flutter/material.dart';

// Validation Functions
String validateEmpty(String value, String formText) {
  String placeHolder = formText;

  if (value.isEmpty) {
    return 'Please Input $placeHolder';
  }
  return null;
}

String validateCharacters(String value, String formText) {
  if (!RegExp(r'^[a-zA-z]+$').hasMatch(value)) {
    return 'Input cannot contain special characters';
  }
  return null;
}

String validateNumbers(String value, String formText) {
  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
    return 'Input cannot contain letters';
  }
  return null;
}

String validateEmail(String value, String formText) {
  if (!value.contains('@')) {
    return 'Please Input a valid Email';
  }
  if (!RegExp(
          r'^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-‌​]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$')
      .hasMatch(value)) {
    return 'Please Input a valid Email';
  }
  return null;
}

String validatePhoneNumber(String value, String formText) {
  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
    return 'Please enter a valid PhoneNumber';
  }
  return null;
}

String validateTransactionPin(String value, String formText) {
  if (value.length != 4) {
    return 'Transaction-Pin must be 4 digits';
  }
  return null;
}

String validateAmount(String value, String formText) {
  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
    return 'Invalid Amount';
  }
  if (double.parse(value) <= 0) {
    return 'Invalid Amount';
  }
  return null;
}

String validateBVNNumber(String value, String formText) {
  if (value.length != 11) {
    return 'Please Input a valid BVN Number';
  }
  return null;
}

String validateAccountNumber(String value, String formText) {
  if (value.length != 10) {
    return 'Please Input a valid Account Number';
  }
  return null;
}

String validatePassword(String value, String formText) {
  if (value.length > 8) {
    return 'Passord must be greater than 8 characters';
  }
  if (value.contains(' ')) {
    return 'Space Not allowed';
  }
  return null;
}

String validateAccountName(String value, String formText) {
  //String placeHolder = formText;

  if (!RegExp(r'^[a-zA-z- ]+$').hasMatch(value)) {
    return 'Input cannot contain special characters';
  }
  return null;
}
