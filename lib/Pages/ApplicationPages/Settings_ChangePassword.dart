import 'package:flutter/material.dart';

import '../../Controllers/Validations.dart';
import '../../ApplicationConstants.dart' as constants;
import '../../Widgets/CustomWidget_FormInput.dart';
import '../../Widgets/CustomWidget_FormButton.dart';

//Model
import '../../Models/CustomerPasswordDTO.dart';

typedef ValidationFunctions(String value, String formtext);

List<ValidationFunctions> passwordValidation = [
  validateEmpty,
  validatePassword
];

class ChangePassword extends StatefulWidget {
  final GlobalKey<FormState> beneficiaryFormKey = GlobalKey<FormState>();

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  GlobalKey<FormState> formkey;
  CustomerPasswordDTO customerPasswordDTO = CustomerPasswordDTO();

  @override
  void initState() {
    super.initState();
    formkey = widget.beneficiaryFormKey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CHANGE PASSWORD'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pageBackground.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
            ),
          ),
          child: Form(
            key: formkey,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Old Password',
                  keyboardType: TextInputType.text,
                  callbackFunctions: passwordValidation,
                  save: (String value) {
                    customerPasswordDTO.oldPassword = value;
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'New Password',
                  keyboardType: TextInputType.number,
                  callbackFunctions: passwordValidation,
                  save: (String value) {
                    customerPasswordDTO.newPassword = value;
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Confirm New Password',
                  keyboardType: TextInputType.text,
                  callbackFunctions: passwordValidation,
                  save: (String value) {
                    customerPasswordDTO.confirmPassword = value;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                FormButton(
                  formKey: formkey,
                  buttonText: 'SAVE',
                  function: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
