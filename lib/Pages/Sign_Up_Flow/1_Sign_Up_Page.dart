import 'package:flutter/material.dart';

import './2_Sign_Up_Page.dart';
import '../../Widgets/CustomWidget_FormInput.dart';
import '../../Controllers/Validations.dart';

//Model
import '../../Models/CustomerDTO.dart';

List<ValidationFunctions> accountNumberValidation = [
  validateEmpty,
  validateNumbers,
  validateAccountNumber,
];

class SignUpPage1 extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage1> {
  final GlobalKey<FormState> accountNumberKey = GlobalKey<FormState>();
  CustomerDTO customerDTO = CustomerDTO();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SIGN UP: ACCOUNT NUMBER',
        ),
        iconTheme: IconThemeData(
          color: Colors.grey[900],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logInBackground.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
            ),
          ),
          child: Form(
            key: accountNumberKey,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                FormInputWidget(
                  hintText: 'Account Number',
                  keyboardType: TextInputType.number,
                  callbackFunctions: accountNumberValidation,
                  save: (String value) {
                    customerDTO.customerAccountNumber = value;
                  },
                ),
                SizedBox(
                  height: 15.0,
                ),
                ContinueButton(
                  customerDTO,
                  formKey: accountNumberKey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContinueButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  CustomerDTO customerDTO;

  ContinueButton(this.customerDTO, {@required this.formKey})
      : assert(formKey != null);

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
          //todo: Make Network call to authenticate and save JWT token in shared preferences
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpPage2(customerDTO),
            ),
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Text('CONTINUE'),
      ),
    );
  }
}
