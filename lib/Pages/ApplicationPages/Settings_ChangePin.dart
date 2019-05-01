import 'package:flutter/material.dart';

import '../../Controllers/Validations.dart';
import '../../ApplicationConstants.dart' as constants;
import '../../Widgets/CustomWidget_FormInput.dart';
import '../../Widgets/CustomWidget_FormButton.dart';

//Model
import '../../Models/CustomerTransactionPinDTO.dart';

typedef ValidationFunctions(String value, String formtext);

List<ValidationFunctions> transactionPinValidation = [
  validateEmpty,
  validateNumbers,
  validateTransactionPin,
];

class ChangePin extends StatefulWidget {
  final GlobalKey<FormState> beneficiaryFormKey = GlobalKey<FormState>();

  @override
  _ChangePinState createState() => _ChangePinState();
}

class _ChangePinState extends State<ChangePin> {
  GlobalKey<FormState> formkey;
  CustomerTransactionPinDTO customerTransactionPinDTO =
      CustomerTransactionPinDTO();

  @override
  void initState() {
    super.initState();
    formkey = widget.beneficiaryFormKey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CHANGE PIN'),
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
                  hintText: 'Old Pin',
                  keyboardType: TextInputType.text,
                  callbackFunctions: transactionPinValidation,
                  save: (String value) {
                    customerTransactionPinDTO.oldTransactionPin =
                        int.parse(value);
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'New Pin',
                  keyboardType: TextInputType.number,
                  callbackFunctions: transactionPinValidation,
                  save: (String value) {
                    customerTransactionPinDTO.newTransactionPin =
                        int.parse(value);
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Confirm New Pin',
                  keyboardType: TextInputType.text,
                  callbackFunctions: transactionPinValidation,
                  save: (String value) {
                    customerTransactionPinDTO.confirmTransactionPin =
                        int.parse(value);
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
