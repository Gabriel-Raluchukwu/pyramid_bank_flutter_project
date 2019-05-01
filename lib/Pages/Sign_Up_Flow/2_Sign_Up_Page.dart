import 'package:flutter/material.dart';

import '../Auth_Page.dart';
import '../../ApplicationConstants.dart' as constants;
import '../../Widgets/CustomWidget_FormInput.dart';
import '../../Controllers/Validations.dart';

//Model
import '../../Models/CustomerDTO.dart';

List<ValidationFunctions> nameValidation = [
  validateEmpty,
  validateCharacters,
];

List<ValidationFunctions> passwordValidation = [
  validateEmpty,
  validatePassword,
];

List<ValidationFunctions> transactionPinValidation = [
  validateEmpty,
  validateNumbers,
  validateTransactionPin,
];

class SignUpPage2 extends StatefulWidget {
  CustomerDTO customerDTO;

  SignUpPage2(this.customerDTO);

  @override
  _SignUpPage2State createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  GlobalKey<FormState> signUpPagekey = GlobalKey<FormState>();
  CustomerDTO customerDTO;

  @override
  void initState() {
    super.initState();
    customerDTO = widget.customerDTO;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN UP'),
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
                    Colors.white.withOpacity(0.5), BlendMode.dstATop)),
          ),
          child: Form(
            key: signUpPagekey,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'UserName',
                  keyboardType: TextInputType.text,
                  callbackFunctions: nameValidation,
                  save: (String value) {
                    customerDTO.userName = value;
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Password',
                  keyboardType: TextInputType.text,
                  callbackFunctions: passwordValidation,
                  save: (String value) {
                    customerDTO.password = value;
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Confirm Password',
                  keyboardType: TextInputType.text,
                  callbackFunctions: passwordValidation,
                  save: (String value) {
                    customerDTO.confirmPassword = value;
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                // FormInputWidget(
                //   hintText: 'Pin',
                //   keyboardType: TextInputType.number,
                //   callbackFunctions: transactionPinValidation,
                //   save: (String value){
                //     customerDTO. = value;
                //   },
                // ),
                // SizedBox(
                //   height: constants.FormSpacing,
                // ),
                // FormInputWidget(
                //   hintText: 'Confirm Pin',
                //   keyboardType: TextInputType.text,
                //   callbackFunctions: transactionPinValidation,
                // ),
                SizedBox(
                  height: 30.0,
                ),
                RegisterButton(
                  formKey: signUpPagekey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  RegisterButton({@required this.formKey}) : assert(formKey != null);

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
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => AuthenticationPage(),
            ),
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Text('REGISTER'),
      ),
    );
  }
}
