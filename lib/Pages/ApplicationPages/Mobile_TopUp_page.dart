import 'package:flutter/material.dart';

import '../../ApplicationConstants.dart' as constants;
import '../../Controllers/Validations.dart';
import '../../Widgets/CustomWidget_Drawer.dart';
import '../../Widgets/CustomWidget_FormInput.dart';
import '../../Widgets/CustomWidget_FormButton.dart';
import '../../Widgets/CustomWidget_DropdownButtonFormField.dart';

import '../../Models/MobileTopUpDTO.dart';

List<ValidationFunctions> amountValidation = [
  validateEmpty,
  validateAmount,
];

List<ValidationFunctions> phoneNumberValidation = [
  validateEmpty,
  validatePhoneNumber,
];

List<ValidationFunctions> transactionPinValidation = [
  validateEmpty,
  validateNumbers,
  validateTransactionPin,
];

class MobileTopUp extends StatefulWidget {
  final PyramidDrawer drawer;
  final GlobalKey<FormState> mobileTopUpFormkey = GlobalKey<FormState>();

  MobileTopUp({@required this.drawer});
  @override
  _MobileTopUpState createState() => _MobileTopUpState();
}

class _MobileTopUpState extends State<MobileTopUp> {
  GlobalKey<FormState> formkey;
  PyramidDrawer drawer;
  MobileTopUpDTO mobileTopUpDTO = MobileTopUpDTO();
  @override
  void initState() {
    super.initState();
    drawer = widget.drawer;
    formkey = widget.mobileTopUpFormkey;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('MOBILE TOP-UP'),
          iconTheme: IconThemeData(
            color: Colors.grey[900],
          ),
        ),
        drawer: drawer,
        body: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pageBackground.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
          ),
          child: Form(
            key: formkey,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: constants.FormSpacing,
                ),
                StringDropdownForm(
                  hint: 'Select a Service Provider',
                  errorMessage: 'Please Select an option',
                  options: <String>['MTN', 'Glo', 'Airtel', 'Etisalat', 'Ntel'],
                  save: (String value) {
                    mobileTopUpDTO.amount = double.parse(value);
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Mobile Number',
                  keyboardType: TextInputType.number,
                  callbackFunctions: phoneNumberValidation,
                  save: (String value) {
                    mobileTopUpDTO.mobileNumber = value;
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Amount',
                  keyboardType: TextInputType.number,
                  callbackFunctions: amountValidation,
                  save: (String value) {
                    mobileTopUpDTO.amount = double.parse(value);
                  },
                ),
                SizedBox(
                  height: constants.FormSpacing,
                ),
                FormInputWidget(
                  hintText: 'Pin',
                  keyboardType: TextInputType.phone,
                  callbackFunctions: transactionPinValidation,
                  save: (String value) {
                    mobileTopUpDTO.transactionPin = int.parse(value);
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                FormButton(
                  formKey: formkey,
                  buttonText: 'PURCHASE',
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
